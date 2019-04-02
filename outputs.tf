##############################################################################
# Outputs File
#
# Expose the outputs you want your users to see after a successful 
# `terraform apply` or `terraform output` command. You can add your own text 
# and include any data from the state file. Outputs are sorted alphabetically;
# use an underscore _ to move things to the bottom. 

output "_instructions" {
  value = "This output contains plain text. You can add variables too."
}

output "public_dns" {
  value = "${azurerm_public_ip.tf-guide-pip.fqdn}"
}

output "App_Server_URL" {
  value = "http://${azurerm_public_ip.tf-guide-pip.fqdn}"
}

output "id" {
  value = "${azurerm_kubernetes_cluster.mattsAKS.id}"
}

output "kube_config" {
  value = "${azurerm_kubernetes_cluster.mattsAKS.kube_config_raw}"
}

output "client_key" {
  value = "${azurerm_kubernetes_cluster.mattsAKS.kube_config.0.client_key}"
}

output "client_certificate" {
  value = "${azurerm_kubernetes_cluster.mattsAKS.kube_config.0.client_certificate}"
}

output "host" {
  value = "${azurerm_kubernetes_cluster.mattsAKS.kube_config.0.host}"
}
