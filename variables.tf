variable "project" {}
variable "region" {
  default = "us-central1"
}

variable "package" {
  default = "strava"
}

variable "bigquery_table" {}
variable "bucket_name" {}
variable "webhook_repo_name" {}