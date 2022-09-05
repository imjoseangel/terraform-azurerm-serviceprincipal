terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.21.1"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.28.0"
    }
  }
  required_version = ">= 1.0.0"
}
