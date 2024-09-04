# variables.tf

variable "project_id" {
  description = "The ID of the GCP project to deploy resources into."
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
  default     = "shortlet-cluster"
}

variable "location" {
  description = "The location (region or zone) where the GKE cluster will be deployed."
  type        = string
  default     = "us-east4-c"
}

variable "initial_node_count" {
  description = "The initial number of nodes in the GKE cluster."
  type        = number
  default     = 3
}

variable "network" {
  description = "The VPC network to deploy the GKE cluster into."
  type        = string
  default     = "projects/shortlet-kubernates-deployment/global/networks/shortlet-vpc"
}

variable "subnet" {
  description = "The subnet to deploy the GKE cluster into."
  type        = string
  default     = "projects/shortlet-kubernates-deployment/regions/us-east4/subnetworks/subnet-us-east-192"
}

variable "master_ipv4_cidr_block" {
  description = "The CIDR block for the GKE master."
  type        = string
  default     = "172.16.0.0/28"
}

variable "enable_private_endpoint" {
  description = "Whether the master's endpoint is private."
  type        = bool
  default     = true
}

variable "enable_private_nodes" {
  description = "Whether the nodes in the cluster are private."
  type        = bool
  default     = true
}

variable "max_nodes_per_pool" {
  description = "The maximum number of nodes per node pool."
  type        = number
  default     = 110
}

variable "machine_type" {
  description = "The machine type to use for the GKE cluster nodes."
  type        = string
  default     = "e2-medium"
}

variable "disk_type" {
  description = "The disk type for the nodes in the GKE cluster."
  type        = string
  default     = "pd-standard"
}

variable "disk_size_gb" {
  description = "The disk size for each node in GB."
  type        = number
  default     = 100
}

variable "scopes" {
  description = "Scopes to be used by the GKE nodes."
  type        = list(string)
  default     = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/trace.append"
  ]
}

variable "addons" {
  description = "Add-ons to enable for the GKE cluster."
  type        = list(string)
  default     = ["HorizontalPodAutoscaling", "HttpLoadBalancing"]
}

variable "enable_autoupgrade" {
  description = "Whether to enable autoupgrade for the GKE nodes."
  type        = bool
  default     = true
}

variable "enable_autorepair" {
  description = "Whether to enable autorepair for the GKE nodes."
  type        = bool
  default     = true
}
