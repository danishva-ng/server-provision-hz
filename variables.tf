variable "hcloud_token" {
  description = "Hetzner Cloud API Token"
  type        = string
  sensitive   = true
}

variable "server_name" {
  description = "Name of the server"
  type        = string
  default     = "poc-tf-gaming-k8s-vm"
}

variable "server_type" {
  description = "Hetzner server type"
  type        = string
  default     = "cpx22"
}

variable "location" {
  description = "Hetzner location"
  type        = string
  default     = "nbg1"
}

variable "image" {
  description = "OS image"
  type        = string
  default     = "ubuntu-22.04"
}

variable "ssh_key_name" {
  default = "poc-k8s-game"
}

variable "network_name" {
  default = "poc-k8s-net"
}

variable "firewall_name" {
  default = "bastion-fw"
}