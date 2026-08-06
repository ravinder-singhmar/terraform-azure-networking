module "rg" {
    source = "../../modules/azurerm_resource_group"
    rgdetails = var.rgdetails
}
module "vnet" {
    source = "../../modules/azurerm_virtual_network"
    vnetdetails = var.vnetdetails
}
module "subnet" {
    source = "../../modules/azurerm_subnet"
    subnetdetails = var.subnetdetails
}