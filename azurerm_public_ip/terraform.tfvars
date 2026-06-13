pip_details = {
  pip1 = {
    name                = "pipforfrontendvmnic"
    resource_group_name = "rg-dev-01"
    location            = "westus"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "pipforappvmnic"
    resource_group_name = "rg-dev-01"
    location            = "westus"
    allocation_method   = "Static"
  }

}