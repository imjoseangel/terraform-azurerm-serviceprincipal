terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.2.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.21.0"
    }
  }
  required_version = ">= 1.0.0"
}
