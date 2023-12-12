# Minio

Minio is a high performance object storage server, compatible with Amazon S3 APIs. It is best suited for storing unstructured data such as photos, videos, log files, backups and container/virtual machine images. Size of an object can range from 0B to a maximum of 50TiB. Minio server is light enough to be bundled with the application stack, similar to NodeJS, Redis and MySQL.

## Setup

These are the steps to setup Minio in CapRover.

1. Create a new app in CapRover with persistent storage checked
2. Choose `Do not expose as web-app` in `HTTP settings`
3. Save and update
4. Add environment variables (see env-example) in `App Configs`
5. Add persistent directory for path in app `/data` with label `minio-data`
6. Add persistent directory for path in app `/root/.minio` with label `minio-config`
7. Save and update
8. Set deploy plain dockerfile in `Deployment` to contents of `minio.dockerfile` in this repo and click `Deploy now`
9. SSH tunnel to the container by running `ssh -p 2222 <user-name>@<ssh-tunnel-domain> -L 9000:<container-name>:9000`
10. Open a browser and navigate to `http://localhost:9000`
