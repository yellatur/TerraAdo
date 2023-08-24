terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.15.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  client_id       = "48d8857e-6dfd-4066-b82c-af6d288d891a"
  client_secret   = "vDv8Q~haK_8pWylbEmH88vopCb.GdaWkSLVX6cKv"
  tenant_id       = "9c730a7b-d0d1-473a-8404-3a5d5d42ef16"
  subscription_id = "9e00cc85-24f1-4468-85af-5da7f3009823"
}

provider "azuread" {
  #features {}
  client_id     = "48d8857e-6dfd-4066-b82c-af6d288d891a"
  client_secret = "vDv8Q~haK_8pWylbEmH88vopCb.GdaWkSLVX6cKv"
  tenant_id     = "9c730a7b-d0d1-473a-8404-3a5d5d42ef16"
  #subscription_id = "0fb43148-b5a2-4681-9ffd-63e6db67a130"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "ajay-rg-import"
    storage_account_name = "__terraformstorageaccount__"
    container_name       = "terraformcont"
    key                  = "landingzone.tfstate"
    access_key           = "__storagekey__"
  }
}
resource "azurerm_resource_group" "rg" {
  name     = "TerraADO"
  location = "eastus"
}
