# outputs.tf

output "cluster_name" {
  description = "The name of the GKE cluster."
  value       = google_container_cluster.primary.name
}

output "cluster_endpoint" {
  description = "The endpoint of the GKE cluster."
  value       = google_container_cluster.primary.endpoint
}

output "cluster_location" {
  description = "The location of the GKE cluster."
  value       = google_container_cluster.primary.location
}

output "master_version" {
  description = "The version of the Kubernetes master."
  value       = google_container_cluster.primary.master_version
}

output "node_pools" {
  description = "The node pools within the GKE cluster."
  value       = google_container_cluster.primary.node_pool
}
