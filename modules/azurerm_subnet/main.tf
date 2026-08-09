resource "azurerm_subnet" "dev-subnet" {
  #checkov:skip=CKV2_AZURE_31:NSG is not required for this environment yet
  for_each             = var.subnetdetails
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}
