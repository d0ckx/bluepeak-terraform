variable "name" {
  type        = string
  description = "Name of the NSG"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group containing the NSG"
}

variable "allowed_https_source" {
  type        = string
  description = "CIDR allowed to access HTTPS"
}
