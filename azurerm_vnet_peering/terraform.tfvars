peeringdetails = {
  peer1to2 = {
    name                      = "peer1to2"
    resource_group_name       = "rg-dev-01"
    virtual_network_name      = "vnet1"
    remote_virtual_network_id = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/virtualNetworks/vnet2"
  }
  peer2to1 = {
    name                      = "peer2to1"
    resource_group_name       = "rg-dev-01"
    virtual_network_name      = "vnet2"
    remote_virtual_network_id = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/virtualNetworks/vnet1"
  }
}