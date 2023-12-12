# Postgres

Postgres is a relational database management system (RDBMS) that is used to store data in a structured way. It is a popular choice for many applications and is used by many companies.

## Setup

These are the steps to setup Postgres in CapRover.

1. Create a new app in CapRover with persistent storage checked
2. Choose `Do not expose as web-app` in `HTTP settings`
3. Save and update
4. Add environment variables (see env-example) in `App Configs`
5. Add persistent directory for path in app `/var/lib/postgresql/data` with label `postgres-data`
6. Save and update
7. Set depoly via image name in `Deployment` to `postgres:latest` and click `Deploy now`
8. SSH tunnel to the container by running `ssh -p 2222 <user-name>@<ssh-tunnel-domain> -L 5432:<container-name>:5432`
9. Test connection to the database by running `psql -h localhost -p 5432 -U <user-name> -d <database-name>`
