variable "proxmox_endpoint" {
  description = "Proxmox API endpoint. Example: https://192.168.1.10:8006"
  type        = string
}

variable "proxmox_api_token" {
  description = "Proxmox API token in USER@REALM!TOKENID=UUID format"
  type        = string
  sensitive   = true
}

variable "proxmox_insecure" {
  description = "Allow self-signed Proxmox SSL certificate"
  type        = bool
}

variable "proxmox_node_name" {
  description = "Proxmox node name"
  type        = string
}

variable "proxmox_node_ip" {
  description = "Proxmox node IP address"
  type        = string
}

variable "proxmox_ssh_username" {
  description = "SSH user for Proxmox host"
  type        = string
}

variable "vm_id" {
  description = "LXC container ID"
  type        = number
}

variable "hostname" {
  description = "LXC hostname"
  type        = string
}

variable "template_datastore" {
  description = "Storage where the Debian LXC template will be downloaded"
  type        = string
}

variable "container_datastore" {
  description = "Storage where the LXC root disk will live"
  type        = string
}

variable "network_bridge" {
  description = "Proxmox bridge for the LXC"
  type        = string
}

variable "lxc_root_password" {
  description = "Root password for the LXC"
  type        = string
  sensitive   = true
}

variable "ssh_public_key_path" {
  description = "Path to your SSH public key from the Alma Terraform VM"
  type        = string
}

variable "debian_template_file_id" {
  description = "Existing Proxmox LXC template file ID"
  type        = string
}
