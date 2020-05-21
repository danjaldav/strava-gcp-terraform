resource "google_cloudfunctions_function" "webhook" {
  name = "${var.package}-webhook"
  available_memory_mb = 128
  runtime = "python37"
  entry_point = "receive"

  trigger_http = true
  timeout = 180
  source_repository {
    url = "https://source.developers.google.com/projects/${var.project}/repos/${google_sourcerepo_repository.webhook.name}/moveable-aliases/master/paths/"
  }
}

# IAM entry for all users to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.webhook.project
  region         = google_cloudfunctions_function.webhook.region
  cloud_function = google_cloudfunctions_function.webhook.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"

  depends_on = [google_project_service.cloudfunctions]
}

output "webhook_url" {
  value = google_cloudfunctions_function.webhook.https_trigger_url
}
