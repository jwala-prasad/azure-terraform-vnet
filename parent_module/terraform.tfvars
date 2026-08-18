rgs = {
  rg01 = {
    name     = "dev-rg"
    location = "centralindia"
  }

  rg02 = {
    name     = "prod-rg"
    location = "centralindia"
  }
}
vnts = {
  vnt001 = {
    name                = "dev-vnet"
    resource_group_name = "dev-rg"
    location            = "centralindia"
    address_space       = ["10.192.0.0/24"]


  }
}
snts = {
  snt001 = {
    name                 = "dev-sub"
    resource_group_name  = "dev-rg"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.192.0.0/24"]
  }
}