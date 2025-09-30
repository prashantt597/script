
variable "sub_id" {
  description = "Azure Subscription ID"
  type        = string
}


variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the VNet (e.g., 10.0.0.0/16)"
  type        = string
  default     = "10.15.0.0/16"  # Default VNet range
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

# subnet_prefix is removed as it will be auto-allocated by the subnet_allocator module


variable "nic_name" {
  description = "Name of the network interface"
  type        = string
}

variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
}


variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "vm_size" {
  description = "Size of the virtual machine (e.g., Standard_B2s)"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}


variable "image_publisher" {
  description = "Publisher of the VM image"
  type        = string
}

variable "image_offer" {
  description = "Offer of the VM image"
  type        = string
}

variable "image_sku" {
  description = "SKU of the VM image"
  type        = string
}

variable "image_version" {
  description = "Version of the VM image"
  type        = string
}


variable "os_disk_type" {
  description = "OS disk type (e.g., Standard_LRS, Premium_LRS)"
  type        = string
}


variable "disks_count" {
  description = "Number of extra data disks to attach"
  type        = number
}

variable "disks_size" {
  description = "Size of each extra data disk in GB"
  type        = number
}


variable "peer_name_between_dev_vnet_to_jenkins_vnet" {
  description = "Peering name from dev VNet to Jenkins VNet"
  type        = string
}

variable "peer_name_between_dev_vnet_to_amdp_vnet" {
  description = "Peering name from dev VNet to development VNet"
  type        = string
}

variable "peer_name_between_jenkins_vnet_to_dev_vnet" {
  description = "Peering name from Jenkins VNet to dev VNet"
  type        = string
}

variable "peer_name_between_amdp_vnet_to_dev_vnet" {
  description = "Peering name from development VNet to dev VNet"
  type        = string
}
