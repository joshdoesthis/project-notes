# Redis

Redis is an open source (BSD licensed), in-memory data structure store, used as a database, cache and message broker.

## Setup

These are the steps to setup Postgres in CapRover.

1. Create a new app in CapRover with persistent storage checked
2. Choose `Do not expose as web-app` in `HTTP settings`
3. Save and update
4. Set depoly via image name in `Deployment` to `redis:latest` and click `Deploy now`
5. SSH tunnel to the container by running `ssh -p 2222 <user-name>@<ssh-tunnel-domain> -L 6379:<container-name>:6379`
6. Test connection to the database by running `redis-cli -h localhost -p 6379`
