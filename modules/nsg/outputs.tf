output "nsg_id" {
  description = "Resource ID of the NSG"
  value       = azurerm_network_security_group.this.id
}
