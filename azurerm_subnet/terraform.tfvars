subnetdetails = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-dev-01"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.18.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-dev-01"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.18.2.0/24"]
  }
  subnet3 = {
    name                 = "app-subnet"
    resource_group_name  = "rg-dev-01"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.20.1.0/24"]
  }
}