# docker-beets

A very simple [beets](https://beets.io) OCI Container.

## Instructions

```sh
podman run --rm -it -v <config-directory>:/config:Z -v <incoming-music>:/incoming:Z \
    -v <destination-directory>:/library:Z ghcr.io/azmodude/beets /bin/bash
```
or if you need to run as a different user for permission reasons:
```sh
sudo podman run --rm -it --user <uid>:<gid> -v <config-directory>:/config:Z \
    -v <incoming-music>:/incoming:Z \
    -v <destination-directory>:/library:Z ghcr.io/azmodude/beets /bin/bash
```

A default /config/config.yaml is available if you don't supply a seperate /config
volume.
