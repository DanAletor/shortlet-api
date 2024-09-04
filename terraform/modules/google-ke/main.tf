resource "google_container_cluster" "primary" {
  project            = var.project_id
  name               = "shortlet-cluster"
  location           = "us-east4-c"
  initial_node_count = 3
  network            = var.network # Replace with a reference or self link to your network, in quotes
  subnetwork         = var.subnet  # Replace with a reference or self link to your subnet, in quotes
  private_cluster_config {
    master_ipv4_cidr_block  = "172.16.0.0/28"
    enable_private_endpoint = true
    enable_private_nodes    = true
  }
  ip_allocation_policy {
  }
  master_authorized_networks_config {
  }
}