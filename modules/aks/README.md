## terraform-azurerm-aks

This module provisions an Azure Kubernetes Service (AKS) cluster.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.k8s](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [random_pet.aks_cluster_dns_prefix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [random_pet.aks_cluster_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [random_pet.rg_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aks_node_admin_username"></a> [aks\_node\_admin\_username](#input\_aks\_node\_admin\_username) | The name of the admin account on each K8s node. | `string` | `"ansible"` | no |
| <a name="input_aks_node_count"></a> [aks\_node\_count](#input\_aks\_node\_count) | The default number of Kubernetes nodes to create | `number` | `1` | no |
| <a name="input_aks_node_ssh_key_path"></a> [aks\_node\_ssh\_key\_path](#input\_aks\_node\_ssh\_key\_path) | The path to the public SSH key to put into K8s nodes. | `string` | `"./ssh_keys/id_rsa.pub"` | no |
| <a name="input_aks_vm_size"></a> [aks\_vm\_size](#input\_aks\_vm\_size) | The size of VMs to create for Kubernetes nodes | `string` | `"Standard_B2ts_v2"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location of the Azure Resource Group | `string` | `"East Asia"` | no |
| <a name="input_resource_group_name_prefix"></a> [resource\_group\_name\_prefix](#input\_resource\_group\_name\_prefix) | The prefix to the name of the Azure Resource Group to provision. | `string` | `"rg-aks-"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aks_cluster_name"></a> [aks\_cluster\_name](#output\_aks\_cluster\_name) | The name of the AKS cluster provisioned |
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | The client certificate used to authenticate with the Kubernetes API server |
| <a name="output_client_key"></a> [client\_key](#output\_client\_key) | The client key associated with the client certificate |
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | The Certificate Authority (CA) certificate for the Kubernetes API server |
| <a name="output_cluster_password"></a> [cluster\_password](#output\_cluster\_password) | The password for basic authentication to access the Kubernetes API server |
| <a name="output_cluster_username"></a> [cluster\_username](#output\_cluster\_username) | The username for basic authentication to access the Kubernetes API server |
| <a name="output_host"></a> [host](#output\_host) | The URL or endpoint of the Kubernetes API server |
| <a name="output_kube_config"></a> [kube\_config](#output\_kube\_config) | The raw Kubernetes configuration used to access the cluster |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name of the resource group created |
