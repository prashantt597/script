variable "vnet_name" {
  description = "Name of the virtual network to allocate subnets in"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the VNet (e.g., 10.0.0.0/16)"
  type        = string
}