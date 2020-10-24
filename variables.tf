variable "do_token" {
  type = string
}

variable "do_region" {
  type    = string
  default = "nyc1"
}

variable "do_droplet_image" {
  type    = string
  default = "prometheus-18-04"
}

variable "do_droplet_name" {
  type    = string
  default = "prometheus"
}

variable "do_droplet_size" {
  type    = string
  default = "s-1vcpu-1gb"
}

variable "do_droplet_ssh_key_fingerprints" {
  type = list(string)
}

variable "ssh_key" {
  type        = string
  description = "Private key used to connect to droplets for provisioning"
}

variable "prometheus_config_file" {
  type    = string
  default = "./prometheus.yml"
}