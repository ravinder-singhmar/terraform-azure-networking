resource "azurerm_resource_group" "dev-rg" {
  for_each = var.rgdetails
  name     = each.value.name
  location = each.value.location
  
}