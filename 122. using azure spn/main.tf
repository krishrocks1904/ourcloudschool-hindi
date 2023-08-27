
data "azurerm_resource_group" "this" {
  name =  var.rg_name
}

output "id" {
  value = data.azurerm_resource_group.this.id
}

# resource "azurerm_resource_group" "example" {
#   name     = var.rg_name
#   location = var.location
#   tags = {
#     "project" = "learning"
#     cost_center = "1234"
#   }
# }

resource "azurerm_storage_account" "st_log" {
  name                     = "stlearningwihtocs"
  resource_group_name      = data.azurerm_resource_group.this.name
  location                 = data.azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
