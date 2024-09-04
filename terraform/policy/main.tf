resource "google_organization_policy" "require_mfa_for_iam_users" {
  org_id         = var.organization_id
  constraint     = var.policy_constraint
  list_policy {
    allow {
      values = ["ENFORCE_MFA_FOR_ALL_IAM_USERS"]
    }
  }
}