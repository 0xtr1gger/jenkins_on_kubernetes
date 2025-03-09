module "aks_cluster" {
  source = "../../modules/aks"

  aks_node_ssh_key_path = "./ssh_keys/id_aks_rsa.pub"
}