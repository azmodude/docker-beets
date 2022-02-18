FROM fedora:35
LABEL maintainer Gordon Schulz <gordon@gordonschulz.de>

RUN set -x && \
  dnf -y update && \
  dnf -y install beets beets-plugins \
  python-eyed3 python3-pillow python3-requests \
  findutils tree && \
  dnf clean all && \
  rm -rf /var/cache/yum

COPY ./rootfs /

ENV BEETSDIR=/config

VOLUME /config /incoming /library
