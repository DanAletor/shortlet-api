# variables.tf
variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "shortlet-kubernates-deployment"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
  default     = "shortlet-vpc"
}

# Add other variables as needed for subnets, IAM roles, etc.
