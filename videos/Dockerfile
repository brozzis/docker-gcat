FROM alpine:latest
MAINTAINER sbrozzi <stefano.brozzi@gmail.com>

ENV PLATFORM_ARCH="amd64"

# install packages
RUN \
 apk update && \
 apk add --no-cache \
 ca-certificates && \
 apk add --no-cache --virtual=build-dependencies \
		exiftool
# apk del --purge \
#	build-dependencies && \
# rm -rf \
#	/tmp/* \
#	/var/tmp/* \
#	/var/cache/apk/*

# add local files
# COPY root/ /
COPY test.sh /test.sh
RUN chmod u+x /test.sh && \
 mkdir -p /in /out && \
 chmod 777 /out

VOLUME ["/config"]

ENTRYPOINT ["/test.sh"]
