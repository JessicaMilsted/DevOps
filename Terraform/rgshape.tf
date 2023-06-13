terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.61.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name = "RG-SHAPE-DIGITAL"
  location = "eastus"

  tags = {
    Created-by = "Jessica Milsted"
  } 
}