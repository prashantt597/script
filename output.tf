
output "resource_group_name" {
  description = "Name of the resource group created"
  value       = module.network.resource_group_name
}

output "vnet_name" {
  description = "Name of the VNet created"
  value       = module.network.vnet_name
}

output "vnet_id" {
  description = "ID of the VNet created"
  value       = module.network.vnet_id
}

output "nic_id" {
  description = "ID of the network interface"
  value       = module.network.nic_id
}


output "vm_id" {
  description = "ID of the virtual machine created"
  value       = module.vm_compute.vm_id
}

