variable "project" {
  default = "strava-349420"
}

variable "region" {
  default = "us-central1"
}

variable "package" {
  default = "strava"
}

variable "bigquery_table" {
  default = "quantified_self_strava_tbl"
}

variable "bucket_name" {
  default = "strava-bucket"
}

# For the Webhook application
variable "webhook_repo_url" {
  type = string
}
variable "verify_token" {
  type = string
  description = "A random string which the Webhook application uses to create your subscription."
}

variable "pull_repo_url" {
  default = "danjaldav"
} 

variable "gcs_to_gcp_repo_url" {
  default = "danjaldav"
}