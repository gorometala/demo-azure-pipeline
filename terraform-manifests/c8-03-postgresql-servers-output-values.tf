# Output Values
output "mysql_server_fqdn" {
    description = "MySQL Server FQDN"
    value = azurerm_postgresql_flexible_server.flex.fqdn
}