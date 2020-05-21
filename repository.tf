resource "google_sourcerepo_repository" "pull" {
  name = "${var.package}-pull"

  depends_on = [google_project_service.repository]
}

output "git_repo" {
  value = "${google_sourcerepo_repository.pull.url}"
}

resource "google_sourcerepo_repository" "gcs_to_gbq" {
  name = "${var.package}-gcs-to-gbq"

  depends_on = [google_project_service.repository]
}

output "git_gcs_to_gbq" {
  value = "${google_sourcerepo_repository.gcs_to_gbq.url}"
}
