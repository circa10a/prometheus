# prometheus

Deployment of my personal prometheus instance via terraform cloud

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
| `prometheus_config_file`          | string | `./prometheus.yml`                         |
