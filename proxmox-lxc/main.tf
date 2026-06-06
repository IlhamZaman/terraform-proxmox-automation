resource "proxmox_virtual_environment_container" "debian_lxc" {
  description = "Debian LXC managed by Terraform"

  node_name    = var.proxmox_node_name
  vm_id        = var.vm_id
  unprivileged = true

  started       = true
  start_on_boot = true

  tags = [
    "terraform",
    "debian",
    "lxc"
  ]

  operating_system {
    type             = "debian"
    template_file_id = var.debian_template_file_id
  }

  cpu {
    cores = 2
  }

  memory {
    dedicated = 4096
    swap      = 512
  }

  disk {
    datastore_id = var.container_datastore
    size         = 32
  }

  network_interface {
    name   = "veth0"
    bridge = var.network_bridge
  }

  initialization {
    hostname = var.hostname

    user_account {
      password = var.lxc_root_password
      keys     = [trimspace(file(pathexpand(var.ssh_public_key_path)))]
    }

    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
  }
}
