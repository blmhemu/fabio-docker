# fabio-docker

Official fabio team provides only amd64 docker images (as of june 2021). This build provides images for arm64 and arm along with amd64 for convenience.

Make and place your fabio configuartion file in say fabio.config

```
docker run -v fabio.config:/etc/fabio/fabio.configuration blmhemu/fabio:unstable
```
