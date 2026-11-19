variable "subscription_id" {
  description = "Azure subscription ID for Adventis Global Lab 04"
  type        = string
  sensitive   = true
}

variable "location" {
  description = "Azure region for Adventis Global infrastructure"
  type        = string
  default     = "uksouth"
}

variable "resource_group_name" {
  description = "Name of the Lab 04 resource group"
  type        = string
  default     = "rg-adventis-tf-lab04"
}

variable "vnet_name" {
  description = "Name of the Adventis Global virtual network"
  type        = string
  default     = "ADV-VNet"
}

variable "vnet_address_space" {
  description = "Address range for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the backend subnet"
  type        = string
  default     = "ADV-Backend-Subnet"
}

variable "subnet_address_prefixes" {
  description = "Address range for the backend subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}