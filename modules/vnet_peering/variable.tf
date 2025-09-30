
variable "vnet_name" {
  description = "Name of the private VNet to peer from"
  type        = string
}

variable "vnet_id" {
  description = "ID of the private VNet to peer TO (used by remote networks)"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name of the private VNet"
  type        = string
}


variable "jenkins_vnet_name" {
  description = "Name of the Jenkins VNet"
  type        = string
}

variable "jenkins_rg_name" {
  description = "Resource group of the Jenkins VNet"
  type        = string
}


variable "development_vnet_name" {
  description = "Name of the Development VNet"
  type        = string
}

variable "development_rg_name" {
  description = "Resource group of the Development VNet"
  type        = string
}


variable "peer_name_between_dev_vnet_to_jenkins_vnet" {
  description = "Peering name: Dev VNet to Jenkins VNet"
  type        = string
}

variable "peer_name_between_dev_vnet_to_amdp_vnet" {
  description = "Peering name: Dev VNet to Development VNet"
  type        = string
}

variable "peer_name_between_jenkins_vnet_to_dev_vnet" {
  description = "Peering name: Jenkins VNet to Dev VNet"
  type        = string
}

variable "peer_name_between_amdp_vnet_to_dev_vnet" {
  description = "Peering name: Development VNet to Dev VNet"
  type        = string
}
