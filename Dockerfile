ARG bookstack_version=latest
FROM solidnerd/bookstack:${bookstack_version}

WORKDIR "/var/www/bookstack"
COPY 0001-use-innodb-dynamic.patch .
RUN ["patch", "-Np1", "-i", "use-innodb-dynamic.patch"]
RUN ["rm", "use-innodb-dynamic.patch"]

