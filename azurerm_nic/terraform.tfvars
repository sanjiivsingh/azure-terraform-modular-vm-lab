nic_details = {
  vm1nic = {
    name                = "frontend-vm-nic"
    location            = "westus"
    resource_group_name = "rg-dev-01"

    ip_configuration = {
      name                          = "internal"
      subnet_id                     = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/frontend-subnet"
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id          = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/publicIPAddresses/pipforfrontendvmnic"
    }
  }
  vm2nic = {
    name                = "backend-vm-nic"
    location            = "westus"
    resource_group_name = "rg-dev-01"

    ip_configuration = {
      name                          = "internal"
      subnet_id                     = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/backend-subnet"
      private_ip_address_allocation = "Dynamic"
    }
  }
  vm3nic = {
    name                = "app-vm-nic"
    location            = "westus"
    resource_group_name = "rg-dev-01"

    ip_configuration = {
      name                          = "internal"
      subnet_id                     = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/app-subnet"
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id          = "/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/publicIPAddresses/pipforappvmnic"
    }
  }
}