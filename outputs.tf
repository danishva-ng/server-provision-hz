output "vm_name" {
  description = "Name of the created VM"
  value       = hcloud_server.vm.name
}

output "vm_public_ipv4" {
  description = "Public IPv4 Address"
  value       = hcloud_server.vm.ipv4_address
}

output "vm_public_ipv6" {
  description = "Public IPv6 Address"
  value       = hcloud_server.vm.ipv6_address
}