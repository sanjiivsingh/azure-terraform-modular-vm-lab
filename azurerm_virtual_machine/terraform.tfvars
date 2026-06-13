linux_vm_details = {
  vm1 = {
    name                = "frontend-vm"
    resource_group_name = "rg-dev-01"
    location            = "westus"
    size                = "Standard_D2s_v3"

    admin_username = "adminuser"
    admin_password = "Password@1234"

    disable_password_authentication = false

    network_interface_ids = ["/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/networkInterfaces/frontend-vm-nic"]

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
  vm2 = {
    name                = "backend-vm"
    resource_group_name = "rg-dev-01"
    location            = "westus"
    size                = "Standard_D2s_v3"

    admin_username = "adminuser"
    admin_password = "Password@1234"

    disable_password_authentication = false

    network_interface_ids = ["subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/networkInterfaces/backend-vm-nic"]

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}

windows_vm_details = {
  vm3 = {
    name                  = "app-vm"
    resource_group_name   = "rg-dev-01"
    location              = "westus"
    size                  = "Standard_D2s_v3"
    admin_username        = "adminuser"
    admin_password        = "Password@1234!"
    network_interface_ids = ["/subscriptions/050e2600-91db-4a07-9844-d0d950106470/resourceGroups/rg-dev-01/providers/Microsoft.Network/networkInterfaces/app-vm-nic"]

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2016-Datacenter"
      version   = "latest"
    }
  }
}