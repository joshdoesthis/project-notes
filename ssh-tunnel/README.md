# SSH Tunnel

This is a simple SSH tunnel that can be used to connect to a remote container in CapRover.

## Setup

These are the steps to setup the SSH tunnel in CapRover.

1. Create a new app in CapRover with persistent storage checked
2. Choose `Do not expose as web-app` in `HTTP settings`
3. Save and update
4. Add environment variables (see env-example) in `App Configs`
5. Add port mapping for server port `2222` to container port `2222`
6. Add persistent directory for path in app `/config` with label `ssh-tunnel-config`
7. Save and update
8. Set depoly via image name in `Deployment` to `linuxserver/openssh-server:latest` and click `Deploy now`
9. SSH to the server running CapRover and run `docker exec -it <container-name> sh`
10. Add the public key to the `authorized_keys` file in the `/config/.ssh` directory
11. Edit `/config/ssh_host_keys/sshd_config` using editor of choice (e.g. `nano`) and set `AllowTcpForwarding ` to `yes` and `GatewayPorts` to `yes`
12. Restart the container by setting instance count to 0 and back to 1
13. Test connection to the remote container by running `ssh -p 2222 <user-name>@<ssh-tunnel-domain>`
