resource "google_storage_transfer_job" "storage_transfer_job" {
  description = var.description
  project     = var.project_id

  transfer_spec {
    gcs_data_source {
      bucket_name = var.src_bucket_name
    }
    gcs_data_sink {
      bucket_name = var.dest_bucket_name
    }
  }

  schedule {
    schedule_start_date {
      year  = var.start_year_job
      month = var.start_month_job
      day   = var.start_date_job
    }
    schedule_end_date {
      year  = var.end_year_job
      month = var.end_month_job
      day   = var.end_date_job
    }
    start_time_of_day {
      hours   = var.start_time_hours_job
      minutes = var.start_time_minutes_job
      seconds = 0
      nanos   = 0
    }
    repeat_interval = "604800s"
  }
}

data "google_storage_transfer_project_service_account" "project_service_account" {
  project = var.dest_project_id
}

resource "google_storage_bucket_iam_member" "storage_bucket_iam_member" {
  bucket = var.dest_bucket_name
  role   = "roles/storage.admin"
  member = "serviceAccount:${data.google_storage_transfer_project_service_account.project_service_account.email}"
}
