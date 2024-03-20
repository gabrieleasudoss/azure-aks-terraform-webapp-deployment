terraform {
  backend "azurerm" {
    resource_group_name  = "flaskappsetuprg"
    storage_account_name = "flaskappsetupsa"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}