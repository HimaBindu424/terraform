output "id" {
  value = azurerm_app_service.main.id
}
output "name" {
  value = azurerm_app_service.main.name
}
output "hostname" {
  value = azurerm_app_service.main.default_site_hostname
}
output "outbound_ip_address_list" {
  value = azurerm_app_service.main.outbound_ip_address_list
}
output "possible_outbound_ip_address_list" {
  value = azurerm_app_service.main.possible_outbound_ip_address_list
}
output "identity" {
  value = azurerm_app_service.main.identity
}


