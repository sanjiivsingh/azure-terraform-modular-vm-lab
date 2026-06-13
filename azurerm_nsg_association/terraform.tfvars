nsg_association_details = {
  nsg1tosubnet1 = {
    subnet_id                 = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/frontend-subnet"
    network_security_group_id = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/networkSecurityGroups/nsg1"
  }
  nsg2tosubnet3 = {
    subnet_id                 = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/app-subnet"
    network_security_group_id = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/networkSecurityGroups/nsg2"
  }
}