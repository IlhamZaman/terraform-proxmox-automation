# Terraform Proxmox Homelab Automation

Terraform configuration for creating virtual machines and LXC containers in my Proxmox node.

I used Terraform to create new virtual machines and Linux containers in a repeatable way through Terraform variables rather than manually clicking through Proxmox all the time

## Project Structure

```text
terraform-proxmox-automation/
├── proxmox-vms/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars.example
└── proxmox-lxc/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    └── terraform.tfvars.example
