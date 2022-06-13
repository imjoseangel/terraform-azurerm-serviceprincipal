terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.9.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.23.0"
    }
  }
  required_version = ">= 1.0.0"
}
