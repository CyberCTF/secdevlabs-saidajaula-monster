# The db service of upstream's deployments/docker-compose.yml: mariadb:10.6.3 with its
# environment baked in and upstream's db/init.sql (app/db/) copied to /docker-entrypoint-initdb.d/,
# where upstream mounts the folder.
FROM docker.io/library/mariadb:10.6.3
ENV MYSQL_ROOT_PASSWORD=root \
    MYSQL_DATABASE=A2 \
    MYSQL_USER=user \
    MYSQL_PASSWORD=pass
COPY app/db/ /docker-entrypoint-initdb.d/
