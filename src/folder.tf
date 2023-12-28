resource "google_folder" "experiment" {
  display_name = "Experiment"
  parent       = "organizations/${var.org_id}"
}
