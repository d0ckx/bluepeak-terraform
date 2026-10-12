moved {
  from = azurerm_network_security_group.app
  to   = module.app_nsg.azurerm_network_security_group.this
}

moved {
  from = azurerm_network_security_rule.allow_https
  to   = module.app_nsg.azurerm_network_security_rule.allow_https
}

moved {
  from = azurerm_virtual_network.bluepeak
  to   = module.network.azurerm_virtual_network.this
}

moved {
  from = azurerm_subnet.management
  to   = module.network.azurerm_subnet.management
}

moved {
  from = azurerm_subnet.app
  to   = module.network.azurerm_subnet.app
}

moved {
  from = azurerm_subnet.data
  to   = module.network.azurerm_subnet.data
}

moved {
  from = module.network.azurerm_subnet.management
  to   = module.network.azurerm_subnet.this["management"]
}

moved {
  from = module.network.azurerm_subnet.app
  to   = module.network.azurerm_subnet.this["app"]
}

moved {
  from = module.network.azurerm_subnet.data
  to   = module.network.azurerm_subnet.this["data"]
}
