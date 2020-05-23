variable "project" {}
variable "region" {
  default = "us-central1"
}

variable "package" {
  default = "strava"
}

variable "bigquery_table" {}
variable "bucket_name" {}
variable "webhook_repo_url" {}
variable "pull_repo_url" {}
variable "gcs_to_gcp_repo_url" {}
