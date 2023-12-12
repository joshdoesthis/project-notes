# Coolify

Coolify is an open-source PaaS platform that makes it easy to deploy and manage containerised applications on your own servers.

## Setup

1. [Install Docker](../docker/README.md) if not already installed
2. Run `curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash`
3. SSH port forward to the host machine and access Coolify at `http://localhost:8000` and follow the setup wizard to create an admin account
4. Go to `Settings` > `General` and set `Instance Domain` to `https://<domain-name>` and click `Save` to enable SSL and force HTTPS
