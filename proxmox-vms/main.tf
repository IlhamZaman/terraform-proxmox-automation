terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.78"
    }
  }
}

provider "proxmox" {
  endpoint  = var.proxmox_api_url
  api_token = var.proxmox_api_token
  insecure  = true
}

resource "proxmox_virtual_environment_vm" "proxmox_vm" {
  name        = var.vm_name
  node_name   = var.proxmox_node
  vm_id       = var.vm_id
  description = "VM created by Terraform. Blank disk, ISO mounted, no disk contents cloned."

  tags = ["terraform", "manual-install"]

  started = false

  operating_system {
    type = "l26"
  }

  bios = "seabios"

  machine = "q35"

  cpu {
    cores = var.vm_cores
    type  = "host"
  }

  memory {
    dedicated = var.vm_memory
  }

  scsi_hardware = "virtio-scsi-single"

  disk {
    datastore_id = var.vm_storage
    interface    = "scsi0"
    size         = var.vm_disk_size
    file_format  = "qcow2"
    iothread     = true
    discard      = "on"
    ssd          = true
  }

  cdrom {
  file_id   = var.iso_file
  interface = "ide2"
}

  network_device {
    bridge = var.vm_bridge
    model  = "virtio"
  }

  boot_order = ["ide2", "scsi0"]

  agent {
    enabled = true
  }

  tablet_device = true
}
