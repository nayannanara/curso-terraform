output "vm_ip" {
  description = "ip da vm criada na azure"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}
