variable "cluster_name" {
  description = "The GKE cluster name"
  type        = string
}

variable "location" {
  description = "The GKE cluster location"
  type        = string
}

variable "image" {
  description = "Docker image to deploy"
  type        = string
}
