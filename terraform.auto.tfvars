do_region = "nyc1"
do_droplet_image = "prometheus-18-04"
do_droplet_name = "prometheus"
do_droplet_size = "s-1vcpu-1gb"
do_droplet_ssh_key_fingerprints = [
    "8c:a9:69:58:94:0d:3b:1c:ad:08:1c:fe:0d:40:64:bf",
    "79:f0:61:b3:86:8c:3d:fc:0f:5e:de:74:8b:8f:03:b0"
]
prometheus_config_file = "./prometheus.yml"