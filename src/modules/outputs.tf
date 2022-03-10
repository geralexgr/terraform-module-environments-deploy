output "webapp_url" {
    value = azurerm_app_service.app_service.default_site_hostname
}

output "webapp_ips" {
    value = azurerm_app_service.app_service.outbound_ip_addresses
}