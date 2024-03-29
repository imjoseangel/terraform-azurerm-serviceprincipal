terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.97.1"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.47.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.11.1"
    }
  }
  required_version = ">= 1.0.0"
}
