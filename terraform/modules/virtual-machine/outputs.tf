output "vm_public_ip" {
  value = azurerm_public_ip.pip_vm.ip_address
}

output "ssh_user" {
  value = var.ssh_user
}
