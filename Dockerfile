# Dockerfile

FROM pihole/pihole:latest

RUN apt-get update
RUN apt-get install -y unbound

WORKDIR /code
COPY src .
RUN cp unbound.conf /etc/unbound/unbound.conf

ENV TZ="America/New York"
ENV DNSSEC=true
ENV WEBTHEME=default-darker
ENV PIHOLE_DNS_="127.0.0.1#5335"

ENTRYPOINT ["./init.sh"]
