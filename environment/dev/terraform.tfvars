rgdetails = {
  rg1 = {
    name     = "dev-rg-network"
    location = "East US"
  }
}

vnetdetails = {
  vnet1 = {
    name                = "dev-vnet-network"
    address_space       = ["10.10.0.0/16"]
    location            = "East US"
    resource_group_name = "rg1"
  }
}

subnetdetails = {
  subnet1 = {
    name                 = "dev-snet-app"
    resource_group_name  = "dev-rg-network"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.10.0.0/24"]
  }

  subnet2 = {
    name                 = "dev-snet-db"
    resource_group_name  = "dev-rg-network"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.10.1.0/24"]
  }
}