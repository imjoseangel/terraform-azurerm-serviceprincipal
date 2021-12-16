terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.89.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 1.2.2"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.4.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  required_version = ">= 0.15"
}
