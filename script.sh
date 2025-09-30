#!/bin/bash
 
# Set variables
SUBNET_ID="/subscriptions/.../subnets/my-subnet"
CIDR="10.0.1.0/24"
 
# Get used IPs
USED_IPS=$(az network nic list --query "[].ipConfigurations[].privateIpAddress" -o tsv)
 
# Generate all IPs in subnet (requires `ipcalc` or similar tool)
ALL_IPS=$(ipcalc -n $CIDR | grep HostMin | awk '{print $2}') # Simplified
 
# Compare and find first unused IP
for ip in $ALL_IPS; do
  if ! echo "$USED_IPS" | grep -q "$ip"; then
    echo "{\"ip\": \"$ip\"}"
    exit 0
  fi
done
 
echo "{\"error\": \"No available IPs\"}"
exit 1
