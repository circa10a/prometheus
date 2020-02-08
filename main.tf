locals {
    ssh_key = file("./do-ci")
}

resource "digitalocean_droplet" "prometheus" {
  image    = var.do_droplet_image
  name     = var.do_droplet_name
  region   = var.do_region
  size     = var.do_droplet_size
  ssh_keys = var.do_droplet_ssh_key_fingerprints

  # Scrape configs
  provisioner "file" {
    source      = var.prometheus_config_file
    destination = "/etc/prometheus/prometheus.yml"

    connection {
        type     = "ssh"
        user     = "root"
        host     = self.ipv4_address
        private_key = local.ssh_key
    }
  }
  # Restart service after uploading new config file
  provisioner "remote-exec" {
    inline = [
      "systemctl reload prometheus.service"
    ]

    connection {
        type     = "ssh"
        user     = "root"
        host     = self.ipv4_address
        private_key = local.ssh_key
    }
  }
}