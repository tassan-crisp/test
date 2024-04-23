terraform {
  backend "gcs" {
    bucket = "andrey-dev"
    prefix = "terraform/state"
  }
}
