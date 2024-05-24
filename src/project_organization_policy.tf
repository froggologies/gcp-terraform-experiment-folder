locals {
  restore_policies = [
    "compute.restrictSharedVpcHostProjects"
  ]
}

resource "google_folder_organization_policy" "restore_policies" {
  for_each   = toset(local.restore_policies)
  folder     = google_folder.experiment.folder_id
  constraint = each.value

  restore_policy {
    default = true
  }
}
