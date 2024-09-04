# policy/variables.tf

variable "organization_id" {
  description = "The ID of the GCP organization where policies will be applied."
  type        = string
  default = "433233193819"
}

variable "policy_constraint" {
  description = "The constraint to apply in the organization policy."
  type        = string 
  default     = "constraints/iam.enforceMfaForIamUsers" 
}
