terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "rg-tf-deployment"
      storage_account_name = "sttfstoragelocation"
      container_name       = "tfstate"
      key                  = "ocs_dev.tfstate"
      
      access_key = "H6BqZABFcq3VgBO8xoldDhwKdwXjmPsUZjnXvwlfQDBWI15EDaDDD7eNJ8EnIWzOTOBpQhkmufHP+ASt6vT+Uw=="
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
