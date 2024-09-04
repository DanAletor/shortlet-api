# variables.tf

variable "project_id" {
  description = "The ID of the GCP project where the resources will be deployed."
  type        = string
  default     = "shortlet-kubernates-deployment"
}

variable "network" {
  description = "The name of the VPC network where the NAT Gateway will be deployed."
  type        = string
  default     = "shortlet-vpc"
}

variable "region" {
  description = "The GCP region where the NAT Gateway and router will be created."
  type        = string
  default     = "us-east4"
}

variable "router_name" {
  description = "The name of the Cloud Router for NAT configuration."
  type        = string
  default     = "nat-router"
}

variable "nat_name" {
  description = "The name of the Cloud NAT configuration."
  type        = string
  default     = "nat-config"
}

variable "source_subnetwork_ip_ranges_to_nat" {
  description = "The subnet IP ranges to be NATed."
  type        = string
  default     = "ALL_SUBNETWORKS_ALL_IP_RANGES" # Options: ALL_SUBNETWORKS_ALL_IP_RANGES, LIST_OF_SUBNETWORKS
}
