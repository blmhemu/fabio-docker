# fabio-docker

The official fabio team provides only amd64 docker images (as of june 2021). This (unoffical) build provides images for arm64 and arm along with amd64 for convenience.


```
docker run -p 9999:9999 -p 9998:9998 blmhemu/fabio:unstable
# Customizable using file mounts
docker run -v fabio.props:/etc/fabio/fabio.properties blmhemu/fabio:unstable
```
