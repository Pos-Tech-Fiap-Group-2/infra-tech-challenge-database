terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = var.appId
  client_secret   = var.password
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}