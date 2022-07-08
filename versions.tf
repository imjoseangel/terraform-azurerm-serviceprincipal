terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.13.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.25.0"
    }
  }
  required_version = ">= 1.0.0"
}
