rgdetails = {
  rg1 = {
    name     = "preprod-rg-network"
    location = "East US"
  }
}

vnetdetails = {
  vnet1 = {
    name                = "preprod-vnet-network"
    address_space       = ["10.20.0.0/16"]
    location            = "East US"
    resource_group_name = "rg1"
  }
}

subnetdetails = {
  subnet1 = {
    name                 = "preprod-snet-app"
    resource_group_name  = "preprod-rg-network"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.20.0.0/24"]
  }

  subnet2 = {
    name                 = "preprod-snet-db"
    resource_group_name  = "preprod-rg-network"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.20.1.0/24"]
  }
}