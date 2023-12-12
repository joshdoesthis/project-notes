# Caprover

Caprover is a self-hosted PaaS (Platform as a Service) that makes it easy to deploy and manage web apps on your own servers.

## Setup

See the [official guide](https://caprover.com/docs/get-started.html) for details on how to install CapRover.

### Docker

Docker is required to run CapRover. See Docker's [documentation](https://docs.docker.com/engine/install/ubuntu/) for details on how to install Docker.

Alternatively, you can run the following commands to install Docker with the convenience script:

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

### NVM and Node

Node is required to run the CapRover CLI. See NVM's [README](https://github.com/nvm-sh/nvm) for details on how to install NVM and Node.
