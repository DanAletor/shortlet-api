# variables.tf

variable "project_id" {
  description = "The name of the VPC network"
  type        = number
  default     = "433233193819"
}

variable "vpc_name" {
  description = "The name of the VPC network"
  type        = string
  default     = "shortlet-vpc"
}

variable "subnets" {
  description = "List of subnets to create in the VPC"
  type = list(object({
    name                      = string
    cidr                      = string
    region                    = string
    private_ip_google_access  = bool
  }))
  default = [
    {
      name                     = "subnet-1"
      cidr                     = "10.0.1.0/24"
      region                   = "us-central1"
      private_ip_google_access = true
    },
    {
      name                     = "subnet-2"
      cidr                     = "10.0.2.0/24"
      region                   = "us-central1"
      private_ip_google_access = true
    }
  ]
}

variable "allowed_ssh_cidrs" {
  description = "List of CIDR ranges allowed to connect via SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"] 
}
