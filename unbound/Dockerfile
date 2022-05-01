# Dockerfile
FROM ubuntu:latest
WORKDIR /code

RUN apt-get update
RUN apt-get install -y unbound

COPY src .
RUN cp unbound.conf /etc/unbound/unbound.conf

ENTRYPOINT ["/usr/sbin/unbound", "-d"]
