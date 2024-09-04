
resource "google_organization_policy" "restrict_iam_user_creation" {
  org_id         = "433233193819"
  constraint     = "constraints/iam.allowedRoles"
  list_policy {
    deny {
      all = true
    }
  }
}
