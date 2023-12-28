terraform {
  backend "gcs" {
    bucket = "state-backend-6d631b"
    prefix = "terraform/states/gcp-terraform-experiment-folder"
  }
}
