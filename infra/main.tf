terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "../modules/network"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  vnet_name           = var.vnet_name
  address_space       = var.vnet_address_space
  subnets             = var.subnets
}

module "acr" {
  source              = "../modules/acr"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  acr_name            = var.acr_name
}

module "aks" {
  source              = "../modules/aks"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  aks_name            = var.aks_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  node_vm_size        = var.node_vm_size
  subnet_id           = module.network.subnet_ids["aks"]
  acr_id              = module.acr.acr_id
  tags                = var.tags
  kubernetes_version  = var.kubernetes_version
  os_disk_size_gb     = var.os_disk_size_gb
  enable_auto_scaling = var.enable_auto_scaling
  min_count           = var.min_count
  max_count           = var.max_count
 
}
 module "key_vault" {
  source              = "./modules/key_vault"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  kv_name             = var.kv_name
  kv_sku              = var.kv_sku
  kv_tags             = var.kv_tags
  kv_enabled_for_deployment = var.kv_enabled_for_deployment
   
 }

