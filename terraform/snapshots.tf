// BQ Jobs to run snapshot queries
// https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_job

module "snapshots_scheduled_queries" {
  source  = "terraform-google-modules/bigquery/google//modules/scheduled_queries"
  version = "~> 7.0"

  project_id = var.project_id

  queries = [
    {
      name           = "Test Scheduled Query"
      location       = "EU"
      data_source_id = "scheduled_query"
      params = {
        query = file("sql/test.sql")
      }
      schedule = "every 6 hours"
      disabled = false
    },
  ]
}
