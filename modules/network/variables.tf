variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space of the virtual network"
}

variable "subnets" {
  description = "Subnets to create in the virtual network"

  type = map(object({
    name             = string
    address_prefixes = list(string)
  }))
}
