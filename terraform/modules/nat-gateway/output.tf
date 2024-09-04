# outputs.tf

output "router_name" {
  description = "The name of the Cloud Router."
  value       = google_compute_router.router.name
}

output "nat_name" {
  description = "The name of the NAT configuration."
  value       = module.cloud-nat.name
}


output "nat_region" {
  description = "The region where the NAT Gateway is deployed."
  value       = module.cloud-nat.region
}
