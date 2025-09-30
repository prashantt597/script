resource "azurerm_linux_virtual_machine" "vm" {
  name                            = var.vm_name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false

  network_interface_ids = [var.nic_id]

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.os_disk_type
    disk_size_gb         = 256
  }
}

resource "azurerm_managed_disk" "extra_disks" {
  count                = var.disks_count
  name                 = "${var.vm_name}-datadisk-${count.index}"
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = "Standard_LRS"
  disk_size_gb         = var.disks_size
  create_option        = "Empty"
}

resource "azurerm_virtual_machine_data_disk_attachment" "extra_disk_attach" {
  count              = var.disks_count
  managed_disk_id    = azurerm_managed_disk.extra_disks[count.index].id
  virtual_machine_id = azurerm_linux_virtual_machine.vm.id
  lun                = count.index
  caching            = "ReadWrite"
}


