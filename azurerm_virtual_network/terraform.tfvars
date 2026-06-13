vnetdetails = {
  vnet1 = {
    name                = "vnet1"
    location            = "westus"
    resource_group_name = "rg-dev-01"
    address_space       = ["10.18.0.0/16"]
  }
  vnet2 = {
    name                = "vnet2"
    location            = "westus"
    resource_group_name = "rg-dev-01"
    address_space       = ["10.20.0.0/16"]
  }
}