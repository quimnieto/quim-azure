output "acr_id" {
  value = azurerm_container_registry.acr.id
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "acr_admin_user" {
  value     = azurerm_container_registry.acr.admin_username
  sensitive = false
}

output "acr_admin_pass" {
  value     = azurerm_container_registry.acr.admin_password
  sensitive = false
}
