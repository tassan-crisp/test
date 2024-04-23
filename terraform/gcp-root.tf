data "google_client_config" "default" {}

data "google_project" "infrastructure" {
  project_id = var.project_id
}