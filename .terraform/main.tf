terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
}

variable "azure_subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
}

resource "azurerm_resource_group" "learn" {
  name     = "rg-learn-iac"
  location = "East US"
}
