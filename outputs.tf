output "resource_group_name" {
  description = "Name of the Adventis Global Lab 04 resource group"
  value       = azurerm_resource_group.lab04.name
}

output "virtual_network_name" {
  description = "Name of the Adventis Global virtual network"
  value       = azurerm_virtual_network.main.name
}

output "backend_subnet_id" {
  description = "Azure resource ID of the backend subnet"
  value       = azurerm_subnet.backend.id
}