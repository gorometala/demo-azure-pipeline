# Output Values
output "postgresql_server_fqdn" {
    description = "postgresql Server FQDN"
    value = azurerm_postgresql_flexible_server.flex.fqdn
}