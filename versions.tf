terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.94.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.17.0"
    }
  }
  required_version = ">= 1.0.0"
}
