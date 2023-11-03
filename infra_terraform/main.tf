resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "${var.resource_group_name}-rg"
}

# Manages the MySQL Flexible Server
resource "azurerm_mysql_flexible_server" "default" {
  location                     = azurerm_resource_group.rg.location
  name                         = "mysqlfs-${var.mysql_flexible_server_name}"
  resource_group_name          = azurerm_resource_group.rg.name
  administrator_login          = var.administrator_login
  administrator_password       = var.administrator_password
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  sku_name                     = "B_Standard_B1ms"
  version                      = "8.0.21"
  zone                         = "1"
  
  maintenance_window {
    day_of_week  = 0
    start_hour   = 8
    start_minute = 0
  }
  storage {
    iops    = 360
    size_gb = 20
  }
  
}