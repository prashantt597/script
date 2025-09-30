resource "azurerm_dev_test_global_vm_shutdown_schedule" "shutdown" {
  virtual_machine_id    = var.vm_id
  location              = var.location
  enabled               = true
  daily_recurrence_time = "1900"
  timezone              = "India Standard Time"

  notification_settings {
    enabled         = false
    time_in_minutes = 30
    webhook_url     = ""
  }
}
