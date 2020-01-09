FROM python:2-stretch

MAINTAINER Mahyuddin Susanto <udienz@gmail.com>

RUN apt update && \
    apt dist-upgrade -y -q && \
    apt install -y python-libxslt1 python-libxml2 python-genshi xsltproc \
    python-django git python-lxml vim python-librdf nginx

COPY files/entrypoint.sh /entrypoint.sh
COPY files/cron /planet-crontab
COPY files/gen-planet.sh /usr/local/bin/gen-planet.sh

EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
