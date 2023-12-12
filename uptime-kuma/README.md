# Uptime Kuma

UpTime Kuma is a self-hosted monitoring tool that allows you to monitor your websites and servers from a single dashboard.

## Setup

These are the steps to setup Uptime Kuma in CapRover.

1. Create a new app in CapRover with persistent storage checked
2. Choose `Do not expose as web-app` in `HTTP settings`
3. Save and update
4. Add port mapping for server port `8200` to container port `8200`
5. Add persistent directory for path in app `/app/data` with label `uptime-kuma-data`
6. Save and update
7. Set deploy image name in `Deployment` to `louislam/uptime-kuma:latest` and click `Deploy now`
8. SSH tunnel to the container by running `ssh -p 2222 <user-name>@<ssh-tunnel-domain> -L 8200:<container-name>:8200`
9. Open a browser and navigate to `http://localhost:8200`
