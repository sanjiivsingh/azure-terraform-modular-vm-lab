nsrulesdetails = {
  ssh = {
    name                       = "ssh"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

    resource_group_name         = "rg-dev-01"
    network_security_group_name = "nsg1"
  }
  http = {
    name                       = "http"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

    resource_group_name         = "rg-dev-01"
    network_security_group_name = "nsg1"
  }
  https = {
    name                       = "https"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

    resource_group_name         = "rg-dev-01"
    network_security_group_name = "nsg1"
  }
  rdp = {
    name                       = "rdp"
    priority                   = 130
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

    resource_group_name         = "rg-dev-01"
    network_security_group_name = "nsg2"
  }
}