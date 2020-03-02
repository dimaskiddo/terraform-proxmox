module "example_instance" {
  # Source
  source                      = "../modules/proxmox"

  # Vars Proxmox API
  proxmox_api_endpoint        = "https://pve-1.example.com:8006"
  proxmox_api_insecure        = "true"
  
  proxmox_api_user            = "user"
  proxmox_api_password        = "password"

  # Vars Proxmox Cluster
  proxmox_cluster_node        = "pve-1"
  proxmox_cluster_pool        = "pool-1"
  proxmox_cluster_storage     = "local"

  # Vars Proxmox VM Template
  proxmox_vm_os_type          = "Other"
  proxmox_vm_template         = "ubuntu-16.04-amd64"
  proxmox_vm_auto_start       = "true"

  # Vars Proxmox VM Spesification
  proxmox_vm_name             = "ip-172-10-13-11"
  proxmox_vm_cpu_cores        = "1"
  proxmox_vm_cpu_sockets      = "1"
  proxmox_vm_memory           = "1024"
  proxmox_vm_disk_size        = "8"
  proxmox_vm_net_bridge       = "vmbr0"
  proxmox_vm_net_vlan         = "-1"
  proxmox_vm_net_ipv4_address = "172.10.13.11"
  proxmox_vm_net_ipv4_prefix  = "16"
  proxmox_vm_net_ipv4_gateway = "172.10.0.1"
  proxmox_vm_dns_nameserver   = "172.10.0.1"
  proxmox_vm_dns_searchdomain = "YOUR_DOMAIN"
  proxmox_vm_ssh_password     = "YOUR_SSH_PASSWORD"
  proxmox_vm_ssh_keys         = "YOUR_SSH_PUBLIC_KEYS"
}