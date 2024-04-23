variable "project_id" {
  type        = string
  description = "project id for andrey dev project"
  default     = "sandbox-andrey-dev"
}

variable "service_account_id" {
  type        = string
  description = "sa id for the andrey dev project"
  default     = "andrey-dev-sa"
}

variable "dataset" {
  type        = string
  description = "andrey dev dataset"
  default     = "andrey_dev"
}

variable "tf_service_account_id" {
  type        = string
  description = "sa id for the andrey dev project"
  default     = "tf-dev-sa"
}