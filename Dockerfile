FROM alpine:3.12 as base
RUN apk update && apk add --no-cache ca-certificates && addgroup -S fabio && adduser -S fabio -G fabio

FROM base as amd64
ADD https://github.com/fabiolb/fabio/releases/download/v1.5.15/fabio-1.5.15-go1.15.5-linux_amd64 /usr/bin/fabio

FROM base as arm64
ADD https://github.com/fabiolb/fabio/releases/download/v1.5.15/fabio-1.5.15-go1.15.5-linux_arm /usr/bin/fabio

FROM base as arm
ADD https://github.com/fabiolb/fabio/releases/download/v1.5.15/fabio-1.5.15-go1.15.5-linux_arm /usr/bin/fabio

FROM ${TARGETARCH}
ADD https://raw.githubusercontent.com/fabiolb/fabio/master/fabio.properties /etc/fabio/fabio.properties
RUN chmod +x /usr/bin/fabio && chmod +r /etc/fabio/fabio.properties
EXPOSE 9998 9999
USER fabio
ENTRYPOINT ["/usr/bin/fabio"]
CMD ["-cfg", "/etc/fabio/fabio.properties"]