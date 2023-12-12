# MariaDB

MariaDB is a community-developed fork of the MySQL relational database management system intended to remain free under the GNU GPL. Being a fork of a leading open source software system, it is notable for being led by the original developers of MySQL, who forked it due to concerns over its acquisition by Oracle.

## Setup

These are the steps to setup MariaDB in CapRover.

1. Create a new app in CapRover with persistent storage checked
2. Choose `Do not expose as web-app` in `HTTP settings`
3. Save and update
4. Add environment variables (see env-example) in `App Configs`
5. Add persistent directory for path in app `/etc/mysql` with label `mariadb-config`
6. Add persistent directory for path in app `/var/lib/mysql` with label `mariadb-data`
7. Save and update
8. Set depoly via image name in `Deployment` to `mariadb:latest` and click `Deploy now`
9. SSH tunnel to the container by running `ssh -p 2222 <user-name>@<ssh-tunnel-domain> -L 3306:<container-name>:3306`
10. Test connection to the database by running `mariadb --host localhost --port 3306 -u <user-name> -p`
