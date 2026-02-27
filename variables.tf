variable "hcloud_token" {
  description = "Hetzner Cloud API Token"
  type        = string
  sensitive   = true
}

variable "server_name" {
  type    = string
  default = "poc-tf-gaming-k8s-vm"
}

variable "server_type" {
  type    = string
  default = "cpx22"
}

variable "location" {
  type    = string
  default = "nbg1"
}

variable "image" {
  type    = string
  default = "ubuntu-22.04"
}