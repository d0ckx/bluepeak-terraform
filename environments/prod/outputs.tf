output "resource_group_id" {
  description = "Resource ID of the BluePeak resource group"
  value       = azurerm_resource_group.bluepeak.id
}

output "vnet_id" {
  description = "Resource ID of the BluePeak virtual network"
  value       = module.network.vnet_id
}

output "management_subnet_id" {
  description = "Resource ID of the management subnet"
  value       = module.network.management_subnet_id
}

output "app_subnet_id" {
  description = "Resource ID of the application subnet"
  value       = module.network.app_subnet_id
}

output "app_nsg_id" {
  description = "Resource ID of the application NSG"
  value       = module.app_nsg.nsg_id
}

output "tfstate_resource_group_id" {
  description = "ID of the Terraform state resource group"
  value       = data.azurerm_resource_group.tfstate.id
}
