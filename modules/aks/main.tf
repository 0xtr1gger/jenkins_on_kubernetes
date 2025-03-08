terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        varsion = "~>3.0"
    }
  }
}

resource "random_pet" "rg_name" {
    prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
    location = var.resource_group_location
    name = random_pet.rg_name.id
}

resource "random_pet" "aks_cluster_name" {
    prefix = "aks-cluster-"
}

resource "random_pet" "aks_cluster_dns_prefix" {
    prefix = "aks-dns-"
}

resource "azurerm_kubernetes_cluster" "k8s" {
  location = azurerm_resource_group.rg.location
  name = random_pet.aks_cluster_name.id
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix = random_pet.aks_cluster_dns_prefix.id

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name = "default"
    node_count = var.aks_node_count
    vm_size = var.aks_vm_size
  }

  linux_profile {
    admin_username = aks_node_admin_username

    ssh_key {
      key_data = file(var.aks_node_ssh_key_path)
    }
  }
}