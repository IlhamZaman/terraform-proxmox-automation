output "vm_name" {
  value = proxmox_virtual_environment_vm.proxmox_vm.name
}

output "vm_id" {
  value = proxmox_virtual_environment_vm.proxmox_vm.vm_id
}

output "next_step" {
  value = "Start the VM in Proxmox and manually install the operating system from the mounted ISO."
}
