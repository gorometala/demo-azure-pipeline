resource "azurerm_app_service_plan" "app_service_plan" {
    name                =  "${local.resource_name_prefix}-app-service-plan"
    location             = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name

    sku {
        tier = "Standard"
        size = "S1"
    }
}