variable "resource_group_name" {
  description = "Enter resource group name"
  type = string
}

variable "location" {
  description = "Enter the location or region name for resource creation"
  type = string
}

variable "vnet_name" {
  description = "Enter name for vnet"
}

variable "vnet_address_space" {
  description = "Enter the vnet_address_space for vnet"
  type = string
}

variable "subnet_name" {
  description = "Enter the subnet name for your vnet"
  type = string
}

variable "subnet_prefix" {
  description = "Enter subnet_prefix. If not provided, will be automatically allocated"
  type = string
  default = ""
}

variable "nic_name" {
  description = "Enter nic name"
  type = string
}

variable "nsg_name" {
  description = "Enter nsg name"
  type = string
}

