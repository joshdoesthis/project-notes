# Coolify

Coolify is an open-source PaaS platform that makes it easy to deploy and manage containerised applications on your own servers.

# Installation

## Prerequisites

- A remote host running a supported Linux distribution with Docker installed
- A domain pointing to the host

## Setup

1. Run `curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash` on the host
2. Port forward ports 8000 and 6001 to the host
3. Open `http://localhost:8000` in your browser
4. To enable SSL for the Coolify dashboard go to `Settings` and set the instance domain to `https://<hostname>.<domain>` and save
5. Close the port forwards and open `https://<hostname>.<domain>` in your browser
