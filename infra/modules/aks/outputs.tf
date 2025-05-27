output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}
output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}
output "aks_id" {
  value = azurerm_kubernetes_cluster.aks.id
}
output "aks_fqdn" {
  value = azurerm_kubernetes_cluster.aks.fqdn
}


