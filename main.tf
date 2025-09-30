provider "azurerm" {
  features {}
  subscription_id = var.sub_id
}

module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  subnet_name         = var.subnet_name
  subnet_prefix       = var.subnet_prefix
  nic_name            = var.nic_name
  nsg_name            = var.nsg_name
}


module "vm_compute" {
  source              = "./modules/vm_compute"
  resource_group_name = module.network.resource_group_name
  location            = var.location
  nic_id              = module.network.nic_id
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  image_publisher     = var.image_publisher
  image_offer         = var.image_offer
  image_sku           = var.image_sku
  image_version       = var.image_version
  os_disk_type        = var.os_disk_type
  disks_count         = var.disks_count
  disks_size          = var.disks_size
}


module "vm_shutdown" {
  source   = "./modules/vm_shutdown"
  vm_id    = module.vm_compute.vm_id
  location = var.location
}


module "vnet_peering" {
  source = "./modules/vnet_peering"

  vnet_name           = module.network.vnet_name
  vnet_id             = module.network.vnet_id
  resource_group_name = module.network.resource_group_name

  jenkins_vnet_name     = "amdp-jenkins-master-vnet"
  jenkins_rg_name       = "amdp-jenkins"
  development_vnet_name = "amdp-development2-vnet"
  development_rg_name   = "amdp-development2"

  peer_name_between_dev_vnet_to_jenkins_vnet = var.peer_name_between_dev_vnet_to_jenkins_vnet
  peer_name_between_dev_vnet_to_amdp_vnet    = var.peer_name_between_dev_vnet_to_amdp_vnet
  peer_name_between_jenkins_vnet_to_dev_vnet = var.peer_name_between_jenkins_vnet_to_dev_vnet
  peer_name_between_amdp_vnet_to_dev_vnet    = var.peer_name_between_amdp_vnet_to_dev_vnet
}
