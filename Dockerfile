FROM fedora:33

RUN set -x && \
        dnf -y update && \
        dnf -y install beets beets-plugins && \
        dnf clean all && \
        rm -rf /var/cache/yum

ENV BEETSDIR=/config

VOLUME /config /incoming /library
