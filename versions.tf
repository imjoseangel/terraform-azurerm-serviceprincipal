terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.99.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.19.0"
    }
  }
  required_version = ">= 1.0.0"
}
