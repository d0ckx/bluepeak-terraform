output "vnet_id" {
  description = "Resource ID of the VNet"
  value       = azurerm_virtual_network.this.id
}

output "management_subnet_id" {
  description = "Resource ID of the management subnet"
  value       = azurerm_subnet.this["management"].id
}

output "app_subnet_id" {
  description = "Resource ID of the application subnet"
  value       = azurerm_subnet.this["app"].id
}

output "data_subnet_id" {
  description = "Resource ID of the data subnet"
  value       = azurerm_subnet.this["data"].id
}
