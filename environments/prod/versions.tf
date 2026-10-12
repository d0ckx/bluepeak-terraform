terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-bluepeak-tfstate-san"
    storage_account_name = "stbluepeaktfstate1234"
    container_name       = "tfstate"
    key                  = "bluepeak-prod.terraform.tfstate"
  }
}
