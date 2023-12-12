# Docker

## Installation

[Install Docker](https://docs.docker.com/engine/install/) on the host machine (if not already installed) and complete [post-installation steps for Linux](https://docs.docker.com/engine/install/linux-postinstall/) if applicable.

## Convenience Script (Linux Only)

Quickly install Docker and configure it to run at startup with the following command:

```bash
curl -fsSL https://get.docker.com -o get-docker.sh && \
sudo sh get-docker.sh && \
sudo systemctl enable docker.service && \
sudo systemctl enable containerd.service
```
