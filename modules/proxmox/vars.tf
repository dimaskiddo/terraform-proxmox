variable "proxmox_api_endpoint" {
  description = "Proxmox API Endpoint"
}

variable "proxmox_api_insecure" {
  description = "Proxmox API Has SSL Insecure"
  default     = true
}

variable "proxmox_api_user" {
  description = "Proxmox API User"
}

variable "proxmox_api_password" {
  description = "Proxmox API Password"
}

variable "proxmox_cluster_node" {
  description = "Proxmox Node Name"
}

variable "proxmox_cluster_pool" {
  description = "Proxmox Pool Name"
}

variable "proxmox_cluster_storage" {
  description = "Proxmox Storage Name"
}

variable "proxmox_vm_name" {
  description = "Proxmox Virtual Machine (VM) Name"
}

variable "proxmox_vm_description" {
  description = "Proxmox Virtual Machine (VM) Description"
  default     = ""
}

variable "proxmox_vm_template" {
  description = "Proxmox Virtual Machine (VM) Template Name"
}

variable "proxmox_vm_full_clone" {
  description = "Proxmox Virtual Machine (VM) is Full Clone"
  default     = true
}

variable "proxmox_vm_os_type" {
  description = "Proxmox Virtual Machine (VM) OS Type"
  default     = "Other"
}

variable "proxmox_vm_agent" {
  description = "Proxmox Virtual Machine (VM) Agent Enabled"
  default     = 0
}

variable "proxmox_vm_auto_start" {
  description = "Proxmox Virtual Machine (VM) Auto Start"
  default     = false
}

variable "proxmox_vm_cpu_type" {
  description = "Proxmox Virtual Machine (VM) CPU Type"
  default     = "host"
}

variable "proxmox_vm_cpu_cores" {
  description = "Proxmox Virtual Machine (VM) CPU Cores"
  default     = 1
}

variable "proxmox_vm_cpu_sockets" {
  description = "Proxmox Virtual Machine (VM) CPU Sockets"
  default     = 1
}

variable "proxmox_vm_memory" {
  description = "Proxmox Virtual Machine (VM) Memory in MiB"
  default     = 1024
}

variable "proxmox_vm_numa" {
  description = "Proxmox Virtual Machine (VM) NUMA"
  default     = false
}

variable "proxmox_vm_hotplug" {
  description = "Proxmox Virtual Machine (VM) Hotplug"
  default     = "network,disk,usb"
}

variable "proxmox_vm_disk_type" {
  description = "Proxmox Virtual Machine (VM) Disk Type"
  default     = "scsi"
}

variable "proxmox_vm_disk_size" {
  description = "Proxmox Virtual Machine (VM) Disk Size in GiB"
  default     = 8
}

variable "proxmox_vm_net_type" {
  description = "Proxmox Virtual Machine (VM) Network Type"
  default     = "virtio"
}

variable "proxmox_vm_net_bridge" {
  description = "Proxmox Virtual Machine (VM) Network Bridge Name"
}

variable "proxmox_vm_net_vlan" {
  description = "Proxmox Virtual Machine (VM) Network VLAN ID/Tag"
  default     = -1
}

variable "proxmox_vm_net_firewall" {
  description = "Proxmox Virtual Machine (VM) Network Firewall"
  default     = true
}

variable "proxmox_vm_net_ipv4_address" {
  description = "Proxmox Virtual Machine (VM) Network Address"
}

variable "proxmox_vm_net_ipv4_prefix" {
  description = "Proxmox Virtual Machine (VM) Network Prefix"
}

variable "proxmox_vm_net_ipv4_gateway" {
  description = "Proxmox Virtual Machine (VM) Network Gateway"
}

variable "proxmox_vm_dns_nameserver" {
  description = "Proxmox Virtual Machine (VM) DNS Nameserver"
}

variable "proxmox_vm_dns_searchdomain" {
  description = "Proxmox Virtual Machine (VM) DNS Search Domain"
}

variable "proxmox_vm_ssh_user" {
  description = "Proxmox Virtual Machine (VM) SSH User"
  default     = ""
}

variable "proxmox_vm_ssh_password" {
  description = "Proxmox Virtual Machine (VM) SSH Password"
  default     = ""
}

variable "proxmox_vm_ssh_keys" {
  description = "Proxmox Virtual Machine (VM) SSH Keys"
}
