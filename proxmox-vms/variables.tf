variable "proxmox_api_url" {
  description = "Proxmox API URL"
  type        = string
}

variable "proxmox_api_token" {
  description = "Proxmox API token"
  type        = string
  sensitive   = true
}

variable "proxmox_node" {
  description = "Proxmox node name"
  type        = string
}

variable "vm_storage" {
  description = "Storage ID where VM disks and ISO live"
  type        = string
}

variable "iso_file" {
  description = "ISO file path inside Proxmox storage"
  type        = string
}

variable "vm_id" {
  description = "VM ID"
  type        = number
}

variable "vm_name" {
  description = "VM name"
  type        = string
}

variable "vm_cores" {
  description = "CPU cores"
  type        = number
}

variable "vm_memory" {
  description = "RAM in MB"
  type        = number
}

variable "vm_disk_size" {
  description = "Disk size in GB"
  type        = number
}

variable "vm_bridge" {
  description = "Proxmox network bridge"
  type        = string
}
