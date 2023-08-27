terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}

provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.location
  tags = {
    "project" = "learning"
    cost_center = "1234"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "another-rg"
  location = var.location
}