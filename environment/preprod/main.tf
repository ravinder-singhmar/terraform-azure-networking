module "rg" {
  source    = "../modules/azurerm_resource_group"
  rgdetails = var.rgdetails
}

module "vnet" {
  source      = "../modules/azurerm_virtual_network"
  
  # Yahan humne loop lagaya hai (for k, v in var.vnetdetails)
  # Is loop ke andar hum VNET module ko uske variables bhej rahe hain,
  # lekin resource_group_name hum seedha RG module ke Output se nikal kar de rahe hain!
  vnetdetails = {
    for k, v in var.vnetdetails : k => {
      name                = v.name
      location            = v.location
      address_space       = v.address_space
      # Implicit Dependency: Ye line VNET ko RG module par nirbhar (dependent) banati hai
      resource_group_name = module.rg.rg_objects[v.rg_key].name
    }
  }
}