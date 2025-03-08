output "resource_group_name" {
  value = azurerm_resource_group.rg.name
  description = "The name of the resource group created"
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.k8s.name
  description = "The name of the AKS cluster provisioned"
}


output "client_certificate" {
  value = azurerm_kubernetes_cluster.k8s.kube_config[0].client_certificate
  description = "The client certificate used to authenticate with the Kubernetes API server"
  sensitive = true
}

output "client_key" {
  value = azurerm_kubernetes_cluster.k8s.kube_config[0].client_key
  description = "The client key associated with the client certificate"
  sensitive = true
}

output "cluster_ca_certificate" {
  value = azurerm_kubernetes_cluster.k8s.kube_config[0].cluster_ca_certificate
  description = "The Certificate Authority (CA) certificate for the Kubernetes API server"
  sensitive = true
}

output "cluster_password" {
  value = azurerm_kubernetes_cluster.k8s.kube_config[0].password
  description = "The password for basic authentication to access the Kubernetes API server"
  sensitive = true
}

output "cluster_username" {
  value = azurerm_kubernetes_cluster.k8s.kube_config[0].username
  description = "The username for basic authentication to access the Kubernetes API server"
  sensitive = true
}

output "host" {
  value = azurerm_kubernetes_cluster.k8s.kube_config[0].host
  description = "The URL or endpoint of the Kubernetes API server"
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.k8s.kube_config_raw
  description = "The raw Kubernetes configuration used to access the cluster"
  sensitive = true
}