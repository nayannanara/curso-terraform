output "subnet_id" {
  description = "ID da subnet na azure"
  value       = azurerm_subnet.subnet.id
}

output "security_group_id" {
  description = "ID da security group na azure"
  value       = azurerm_network_security_group.nsg.id
}
