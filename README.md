# fabio-docker

Official fabio team provides only amd64 docker images (as of june 2021). This build provides images for arm64 and arm along with amd64 for convenience.

Make and place your fabio configuartion file in say fabio.props

```
docker run -v fabio.props:/etc/fabio/fabio.properties blmhemu/fabio:unstable
```
