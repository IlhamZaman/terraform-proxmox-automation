proxmox_endpoint = "https://LOCAL-IP:8006"
#proxmox_api_url  = "https://LOCAL-IP:8006/api2/json"
# Format:
# USER@REALM!TOKENID=UUID
#
# Example:
# root@pam!terraform=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
proxmox_api_token = "USER@HOSTBANE!homelab=API-TOKEN"

proxmox_insecure = true

proxmox_node_name = "NODE-NAME"
proxmox_node_ip   = "LOCAL-IP"

proxmox_ssh_username = "USERNAME"

debian_template_file_id = "local:vztmpl/debian-12-standard_12.12-1_amd64.tar.zst"

vm_id    = ID-NUMBER-HERE
hostname = "HOSTNAME-HERE"

template_datastore  = "local"
container_datastore = "VM-STORAGE-LOCATION"

network_bridge = "vmbr0"

lxc_root_password = "PASSWORD HERE"

ssh_public_key_path = "~/PATH/HERE"
