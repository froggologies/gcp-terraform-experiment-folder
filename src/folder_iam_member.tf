resource "google_folder_iam_member" "folder" {
  folder = google_folder.experiment.folder_id
  role   = "roles/owner"
  member = "user:${var.google_user_email}"
}
