FROM mysql:5.6

ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_ROOT_USER=docker
ENV MYSQL_PASSWORD=docker
ENV MYSQL_DATABASE=buscatuarepa

ADD scripts /docker-entrypoint-initdb.d

# docker build -t btadb .
# docker run --name btadatabase -d -p 8080:8080 btadb