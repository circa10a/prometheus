do_region = "nyc1"
do_droplet_image = "prometheus-18-04"
do_droplet_name = "prometheus"
do_droplet_size = "s-1vcpu-1gb"
do_droplet_ssh_key_fingerprints = [
    "79:f0:61:b3:86:8c:3d:fc:0f:5e:de:74:8b:8f:03:b0",
    "a6:5a:9c:4b:19:44:99:21:ee:40:9a:97:c4:b4:87:f2",
    "25:6c:82:e8:fe:a3:74:b3:bf:41:ea:16:e6:c4:18:6a"
]
prometheus_config_file = "./prometheus.yml"