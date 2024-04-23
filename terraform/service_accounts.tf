resource "google_service_account" "andrey_dev" {
  account_id   = var.service_account_id
  project      = var.project_id
  display_name = "andrey-dev-sa"
}

resource "google_service_account" "andrey_tf_dev" {
  account_id   = var.tf_service_account_id
  project      = var.project_id
  display_name = "tf-dev-sa"
}