variable "resource_group_name_prefix" {
    type = string
    description = "The prefix to the name of the Azure Resource Group to provision."
    default = "rg-aks-"
}

variable "resource_group_location" {
    type = string
    description = "The location of the Azure Resource Group"
    default = "East Asia"
}

variable "aks_node_count" {
    type = number
    description = "The default number of Kubernetes nodes to create"
    default = 1 
}

variable "aks_vm_size" {
    type = string
    description = "The size of VMs to create for Kubernetes nodes"
    default = "Standard_B2ts_v2"
}


variable "aks_node_admin_username" {
    type = string
    description = "The name of the admin account on each K8s node."
    default = "ansible"
  
}

variable "aks_node_ssh_key_path" {
  type = string
  description = "The path to the public SSH key to put into K8s nodes."
  default = "./ssh_keys/id_rsa.pub"
}
