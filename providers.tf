terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.27.0" # Newest google provider version
    }
  }
}

provider "google" {
  project = "nodemailer-393915"
  region  = "europe-west3-b"
}