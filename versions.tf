terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.112.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.53.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.12.0"
    }
  }
  required_version = ">= 1.0.0"
}
