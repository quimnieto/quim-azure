terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.37.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

module "resource_group" {
    source                  = "./modules/resource-group"
    resource_group_name     = var.resource_group_name
    location                = var.location
}

module "container_registry" {
    source                  = "./modules/container-registry"
    resource_group_name     = var.resource_group_name
    location                = var.location
}

module "virtual_machine" {
    source                  = "./modules/virtual-machine"
    resource_group_name     = var.resource_group_name
    location                = var.location
}

module "aks_cluster" {
    source                  = "./modules/aks-cluster"
    resource_group_name     = var.resource_group_name
    location                = var.location
    acr_id                  = module.container_registry.acr_id
}
