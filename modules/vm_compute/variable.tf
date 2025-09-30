variable "resource_group_name" {
  description = "Enter the value for the name of the resource group"
  type        = string
}

variable "location" {
  description = "Enter the value for the Azure region (e.g., eastus)"
  type        = string
}

variable "nic_id" {
  description = "Enter the value for the ID of the network interface (NIC)"
  type        = string
}

variable "vm_name" {
  description = "Enter the value for the name of the virtual machine"
  type        = string
}

variable "vm_size" {
  description = "Enter the value for the size of the virtual machine (e.g., Standard_B2s)"
  type        = string
}

variable "admin_username" {
  description = "Enter the value for the admin username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "Enter the value for the admin password for the virtual machine"
  type        = string
  sensitive   = true
}

variable "image_publisher" {
  description = "Enter the value for the image publisher (e.g., Canonical)"
  type        = string
}

variable "image_offer" {
  description = "Enter the value for the image offer (e.g., UbuntuServer)"
  type        = string
}

variable "image_sku" {
  description = "Enter the value for the image SKU (e.g., 18.04-LTS)"
  type        = string
}

variable "image_version" {
  description = "Enter the value for the image version (e.g., latest)"
  type        = string
}

variable "os_disk_type" {
  description = "Enter the value for the OS disk type (e.g., Standard_LRS)"
  type        = string
}

variable "disks_count" {
  description = "Enter the number of extra data disks to attach"
  type        = number
}

variable "disks_size" {
  description = "Enter the size of each data disk in GB"
  type        = number
}
