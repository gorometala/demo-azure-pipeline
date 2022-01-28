resource "azurerm_postgresql_flexible_server" "flex" {
    name                   = "${local.resource_name_prefix}-${var.postgresql_db_name}"
    resource_group_name    = azurerm_resource_group.rg.name
    location               = azurerm_resource_group.rg.location
    version                = "12"
    delegated_subnet_id    = azurerm_subnet.dbsubnet.id
    private_dns_zone_id    = azurerm_private_dns_zone.dns.id
    administrator_login    = var.postgresql_db_username
    administrator_password = var.postgresql_db_password
    zone                   = "1"

    storage_mb = 32768

    sku_name   = "GP_Standard_D4s_v3"
    depends_on = [azurerm_private_dns_zone_virtual_network_link.link]

}