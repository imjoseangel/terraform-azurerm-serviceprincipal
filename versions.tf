terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.38.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.32.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
  required_version = ">= 1.0.0"
}
