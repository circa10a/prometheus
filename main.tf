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
      type        = "ssh"
      user        = "root"
      host        = self.ipv4_address
      private_key = var.ssh_key
    }
  }

  # Add data retention arg to systemd service
  # Reload system daemon units
  provisioner "remote-exec" {
    inline = [
      "sed -i 's/\\/usr\\/local\\/bin\\/prometheus/\\/usr\\/local\\/bin\\/prometheus --storage.tsdb.retention.time=30d/' /etc/systemd/system/prometheus.service",
      "systemctl daemon-reload",
      "systemctl restart prometheus"
    ]

    connection {
      type        = "ssh"
      user        = "root"
      host        = self.ipv4_address
      private_key = var.ssh_key
    }
  }
}