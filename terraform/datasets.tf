// https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset
resource "google_bigquery_dataset" "andrey_dev" {
  dataset_id = var.dataset
  location   = "EU"
  labels = {
    env = "dev"
  }
  project = var.project_id
}
