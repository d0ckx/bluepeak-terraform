variable "location" {
  type        = string
  description = "Azure region for BluePeak resources"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
}

variable "management_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the management subnet"
}

variable "app_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the application subnet"
}

variable "data_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the data subnet"
}

variable "app_nsg_name" {
  type        = string
  description = "Name of the application subnet NSG"
}

variable "allowed_https_source" {
  type        = string
  description = "CIDR allowed to access HTTPS on the application subnet"
}
