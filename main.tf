# Adventis Global - Lab 04
# Azure infrastructure managed with Terraform

# 1. Resource Group
resource "azurerm_resource_group" "lab04" {
  name     = var.resource_group_name
  location = var.location
}

# 2. Virtual Network
resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.lab04.location
  resource_group_name = azurerm_resource_group.lab04.name
}

# 3. Backend Subnet
resource "azurerm_subnet" "backend" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.lab04.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.subnet_address_prefixes
}


# Network Security Group for the Adventis backend subnet
resource "azurerm_network_security_group" "backend" {
  name                = "ADV-Backend-NSG"
  location            = azurerm_resource_group.lab04.location
  resource_group_name = azurerm_resource_group.lab04.name
}

# Associate the NSG with the existing backend subnet
resource "azurerm_subnet_network_security_group_association" "backend" {
  subnet_id                 = azurerm_subnet.backend.id
  network_security_group_id = azurerm_network_security_group.backend.id
}
