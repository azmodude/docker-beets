# docker-beets

A very simple [beets](https://beets.io) OCI Container.

## Instructions

```sh
podman run --rm -it -v <config-directory>:/config:Z -v <incoming-music>:/incoming:Z \
    -v <destination-directory>:/library:Z ghcr.io/azmodude/beets /bin/bash
```
