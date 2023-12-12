# Duplicati

Duplicati is a free, open source, backup client that securely stores encrypted, incremental, compressed backups on cloud storage services and remote file servers.

## Setup

These are the steps to setup Duplicati in CapRover.

1. Create a new app in CapRover with persistent storage checked
2. Choose `Do not expose as web-app` in `HTTP settings`
3. Save and update
4. Add environment variables (see env-example) in `App Configs`
5. Add port mapping for server port `8200` to container port `8200`
6. Add persistent directory for path in app `/config` with label `duplicati-config`
7. Add persistent directory for path in app `/source` with path on host `/source`
8. Add persistent directory for path in app `/backups` with path on host `/backups`
9. Save and update
10. Set depoly via image name in `Deployment` to `linuxserver/duplicati:latest` and click `Deploy now`
11. SSH tunnel to the container by running `ssh -p 2222 <user-name>@<ssh-tunnel-domain> -L 8200:<container-name>:8200`
12. Open a browser and navigate to `http://localhost:8200`
13. Complete setup by following the instructions on the Duplicati web interface
