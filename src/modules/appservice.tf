resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = var.app_service_plan.tier
    size = var.app_service_plan.size
  }

}

resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = azurerm_app_service_plan.app_service_plan.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

}