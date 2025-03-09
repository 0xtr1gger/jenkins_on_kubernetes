output "resource_group_name" {
  value       = module.aks_cluster.resource_group_name
  description = "The name of the resource group created"
}

output "aks_cluster_name" {
  value       = module.aks_cluster.aks_cluster_name
  description = "The name of the AKS cluster provisioned"
}


output "client_certificate" {
  value       = module.aks_cluster.client_certificate
  description = "The client certificate used to authenticate with the Kubernetes API server"
  sensitive   = true
}

output "client_key" {
  value       = module.aks_cluster.client_key
  description = "The client key associated with the client certificate"
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = module.aks_cluster.cluster_ca_certificate
  description = "The Certificate Authority (CA) certificate for the Kubernetes API server"
  sensitive   = true
}

output "cluster_password" {
  value       = module.aks_cluster.cluster_password
  description = "The password for basic authentication to access the Kubernetes API server"
  sensitive   = true
}

output "cluster_username" {
  value       = module.aks_cluster.cluster_username
  description = "The username for basic authentication to access the Kubernetes API server"
  sensitive   = true
}

output "host" {
  value       = module.aks_cluster.host
  description = "The URL or endpoint of the Kubernetes API server"
  sensitive   = true
}

output "kube_config" {
  value       = module.aks_cluster.kube_config
  description = "The raw Kubernetes configuration used to access the cluster"
  sensitive   = true
}