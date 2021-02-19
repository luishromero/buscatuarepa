FROM mysql:5.6

ENV MYSQL_USER=docker
ENV MYSQL_ROOT_PASSWORD=docker
ENV MYSQL_DATABASE=buscatuarepa

ADD scripts /docker-entrypoint-initdb.d
