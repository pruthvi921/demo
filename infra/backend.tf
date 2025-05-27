terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "aizetfstatesa"
    container_name       = "tfstate"
    key                  = "infra/aizedev.terraform.tfstate"
  }
}
