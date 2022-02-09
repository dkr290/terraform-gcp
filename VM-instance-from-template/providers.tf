terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.10.0"
    }
  }
}

provider "google" {
  

  project = "peerless-window-333808"
  region  = "europe-west3"
  zone    = "europe-west3-c"
}