module "project-iam-bindings" {
  source   = "terraform-google-modules/iam/google//modules/projects_iam"
  projects = [var.project_id]
  mode     = "additive"

  bindings = {
    "roles/bigquery.user" = [
      "serviceAccount:${var.service_account_id}@${var.project_id}.iam.gserviceaccount.com"
    ],
    "roles/bigquery.dataOwner" = [
      "serviceAccount:${var.service_account_id}@${var.project_id}.iam.gserviceaccount.com"
    ],
    "roles/owner" = [
      "serviceAccount:${var.tf_service_account_id}@${var.project_id}.iam.gserviceaccount.com"
    ],
    "roles/iam.serviceAccountTokenCreator" = [
      "serviceAccount:${var.tf_service_account_id}@${var.project_id}.iam.gserviceaccount.com"
    ]
  }

  conditional_bindings = [
  ]
}
