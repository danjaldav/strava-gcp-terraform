resource "google_secret_manager_secret" "access_token" {
  provider = google-beta

  secret_id = "STRAVA_ACCESS_TOKEN"

  labels = {
    package = var.package
  }

  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret" "webhook_verify_token" {
  provider = google-beta

  secret_id = "STRAVA_VERIFY_TOKEN"

  labels = {
    package = var.package
  }

  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret" "client_id" {
  provider = google-beta

  secret_id = "STRAVA_CLIENT_ID"

  labels = {
    package = var.package
  }

  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret" "client_secret" {
  provider = google-beta

  secret_id = "STRAVA_CLIENT_SECRET"

  labels = {
    package = var.package
  }

  replication {
    automatic = true
  }
}
