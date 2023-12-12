# Imgproxy

Imgproxy is a fast and secure standalone server for resizing and converting remote images. The main principles of Imgproxy are simplicity, speed, and security.

## Setup

These are the steps to setup Imgproxy in CapRover.

1. Create a new app in CapRover with persistent storage checked
2. Choose `Do not expose as web-app` in `HTTP settings`
3. Save and update
4. Add environment variables (see env-example) in `App Configs`
5. Save and update
6. Set deploy plain dockerfile in `Deployment` to contents of `imgproxy.dockerfile` in this repo and click `Deploy now`
7. SSH tunnel to the container by running `ssh -p 2222 <user-name>@<ssh-tunnel-domain> -L 8080:<container-name>:8080`
8. Open a browser and navigate to `http://localhost:8080`
