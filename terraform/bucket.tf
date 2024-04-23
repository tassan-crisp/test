module "andrey_dev_bucket" {
  source  = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version = "~> 5.0"

  name                     = "andrey-dev"
  project_id               = var.project_id
  location                 = "us-central1"
  public_access_prevention = "enforced"

  force_destroy = false

  labels = {
    environment = "dev",
  }
}