data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
}

locals {
  # Parse the VNet address space to get base network
  vnet_prefix = cidrhost(var.vnet_address_space, 0)
  vnet_prefix_length = split("/", var.vnet_address_space)[1]
  
  # Calculate subnet size (we'll use /24 for each subnet)
  subnet_prefix_length = 24
  max_subnets = pow(2, local.subnet_prefix_length - tonumber(local.vnet_prefix_length))
  
  # Get list of existing subnets
  existing_subnets = data.azurerm_virtual_network.vnet.subnets
  existing_prefixes = [for s in local.existing_subnets : s.address_prefix]
}

output "next_available_subnet" {
  value = cidrsubnet(var.vnet_address_space, 
                     local.subnet_prefix_length - tonumber(local.vnet_prefix_length), 
                     length(local.existing_subnets))
  description = "The next available subnet CIDR block"
}