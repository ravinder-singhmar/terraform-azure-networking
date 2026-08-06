rgdetails = {
  rg1 = {
    name     = "dev-rg1"
    location = "East US"
  }
}
vnetdetails = {
  vnet1 = {
    name                = "dev-vnet1"
    address_space       = ["10.0.0.0/16"]
    location            = "East US"
    resource_group_name = "dev-rg1"
  }
}
subnetdetails = {
  subnet1 = {
    name                 = "dev-subnet1"
    resource_group_name  = "dev-rg1"
    virtual_network_name = "dev-vnet1"
    address_prefixes     = ["10.0.0.0/24"]
  }
  subnet2 = {
    name                 = "dev-subnet2"
    resource_group_name  = "dev-rg1"
    virtual_network_name = "dev-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}