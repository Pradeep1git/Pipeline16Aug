resource "azurerm_resource_group" "RG1" {
  name     = "Rgindia123"
  location = "central india"
}

resource "azurerm_storage_account" "augstorageindia" {
  depends_on               = [azurerm_resource_group.RG1]
  name                     = "storgeindia123"
  resource_group_name      = "RG1"
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}



