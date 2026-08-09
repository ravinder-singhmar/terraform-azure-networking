module "rg" {
  source    = "../../modules/azurerm_resource_group"
  rgdetails = var.rgdetails
}
module "vnet" {
  source = "../../modules/azurerm_virtual_network"
  vnetdetails = {
    for key, value in var.vnetdetails : key => merge(value, {
      resource_group_name = module.rg.rgdetails[value.resource_group_name].name
    })
  }
}
module "subnet" {
  source = "../../modules/azurerm_subnet"
  subnetdetails = {
    for key, value in var.subnetdetails : key => merge(value, {
      virtual_network_name = module.vnet.vnetdetails[value.virtual_network_name].name
    })
  }
}