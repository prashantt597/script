output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "nic_id" {
  value = azurerm_network_interface.nic.id
}

output "resource_group_name" {
  value = azurerm_resource_group.private.name
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}
