# prometheus

![alt text](https://img.shields.io/badge/Terraform%20Cloud-Enabled-blueviolet)
![alte text](https://img.shields.io/badge/Digital%20Ocean-Deployed-blue)

Deployment of my personal prometheus instance via terraform cloud

![alt text](https://i.imgur.com/iA5g04n.png)

## Configuration

### Inputs

| Variable                          | Type   | Default                                    |
|-----------------------------------|--------|--------------------------------------------|
| `do_token`                        | string | `""`                                       |
| `do_region`                       | string | `nyc1`                                     |
| `do_droplet_image`                | string | `prometheus-18-04`                         |
| `do_droplet_name`                 | string | `prometheus`                               |
| `do_droplet_size`                 | string | `s-1vcpu-1gb`                              |
| `do_droplet_ssh_key_fingerprints` | list   | `[]`                                       |
| `ssh_key`                         | string | `""`                                       |
| `prometheus_config_file`          | string | `./prometheus.yml`                         |
