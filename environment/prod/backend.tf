terraform {
  backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate"
    storage_account_name = "stgbackendtfstate"
    container_name       = "tfstate-backend"
    key                  = "prod.tfstatefile"

  }
}