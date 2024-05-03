resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.region
  description  = "This VM instance was created for the purpose of terraforming Google Cloud, as part of Vu Quang Anh's cloud school project."
  #   labels       = var.labels
  tags = var.tags

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

  metadata_startup_script = "echo Bonjour, M. Ansard > /hello.txt"

  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/install.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/install.sh",
      "/tmp/script.sh"
    ]
  }
}

resource "google_compute_firewall" "allow-ssh-http-https" {
name    = "allow-ssh-http-https"
network = "default"

allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"] # Allowing SSH(port 22), HTTP(port 80) and HTTPS(port 443) traffic
}

source_ranges = ["0.0.0.0/0"] # Allow access from any IP adress

}
