terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "learn" {
  name     = "rg-learn-iac"
  location = "East US"
}
