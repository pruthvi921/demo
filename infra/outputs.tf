output "acr_login_server" {
  value = module.acr.acr_login_server
}
output "vnet_id" {
  value = module.network.vnet_id
}
output "subnet_ids" {
  value = {
    for subnet_name, subnet_id in azurerm_subnet.subnets : subnet_name => subnet_id.id
  }
}
output "aks_name" {
  value = module.aks.aks_name
}
