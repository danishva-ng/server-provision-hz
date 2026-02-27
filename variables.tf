variable "hcloud_token" {
  description = "Hetzner Cloud API Token"
  type        = string
  sensitive   = true
}

variable "ssh_public_key" {
  description = "Public SSH key for server access"
  type        = string
  sensitive   = true
}

variable "server_name" {
  description = "Name of the VM"
  type        = string
  default     = "tf-gaming-k8s-vm"
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
  description = "OS Image"
  type        = string
  default     = "ubuntu-22.04"
}