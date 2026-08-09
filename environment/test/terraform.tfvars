rgdetails = {
  rg1 = {
    name     = "test-rg-network"
    location = "East US"
  }
}

vnetdetails = {
  vnet1 = {
    name                = "test-vnet-network"
    address_space       = ["10.40.0.0/16"]
    location            = "East US"
    resource_group_name = "rg1"
  }
}

subnetdetails = {
  subnet1 = {
    name                 = "test-snet-app"
    resource_group_name  = "test-rg-network"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.40.0.0/24"]
  }

  subnet2 = {
    name                 = "test-snet-db"
    resource_group_name  = "test-rg-network"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.40.1.0/24"]
  }
}