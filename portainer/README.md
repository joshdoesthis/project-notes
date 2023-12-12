# Portainer

Portainer is a lightweight management UI which allows you to easily manage your different Docker environments (Docker hosts or Swarm clusters). Portainer is meant to be as simple to deploy as it is to use. It consists of a single container that can run on any Docker engine (can be deployed as Linux container or a Windows native container).

## Setup

1. [Install Docker](https://docs.docker.com/engine/install/) on the host machine (if not already installed) and complete [post-installation steps for Linux](https://docs.docker.com/engine/install/linux-postinstall/) if applicable
2. Run `docker volume create portainer-data` to create a persistent volume for Portainer
3. Run `docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer-data:/data portainer/portainer-ce:latest` to deploy Portainer
4. Access Portainer at `https://<host-ip>:9443` and follow the setup wizard to create an admin account
5. Select `Local` for the environment and click `Connect`
