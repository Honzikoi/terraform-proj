terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.27.0" # Newest google provider version
    }
  }
}

provider "google" {
  project      = "google-terraform-proj-329912"
  region       = "europe-west3-b"
  credietnials = ""
}