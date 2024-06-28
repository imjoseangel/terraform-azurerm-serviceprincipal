terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.110.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.53.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.11.2"
    }
  }
  required_version = ">= 1.0.0"
}
