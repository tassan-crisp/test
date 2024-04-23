module "project_services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "~> 14.0"

  project_id = var.project_id

  // Required for scheduled queries
  activate_apis = ["bigquerydatatransfer.googleapis.com"]

  disable_services_on_destroy = false
}
