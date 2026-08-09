rgdetails = {
  rg1 = {
    name     = "prod-rg-network"
    location = "East US"
  }
}

vnetdetails = {
  vnet1 = {
    name                = "prod-vnet-network"
    address_space       = ["10.30.0.0/16"]
    location            = "East US"
    resource_group_name = "rg1"
  }
}

subnetdetails = {
  subnet1 = {
    name                 = "prod-snet-app"
    resource_group_name  = "prod-rg-network"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.30.0.0/24"]
  }

  subnet2 = {
    name                 = "prod-snet-db"
    resource_group_name  = "prod-rg-network"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.30.1.0/24"]
  }
}