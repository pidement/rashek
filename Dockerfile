FROM alpine:3.16.2

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories

RUN apk update \
    && apk add wget gstreamer gstreamer-tools gst-plugins-base gst-rtsp-server-dev gst-plugins-good gst-plugins-ugly ttf-dejavu \
    && rm -rf /var/cache/apk/*

RUN wget https://github.com/aler9/rtsp-simple-server/releases/download/v0.19.3/rtsp-simple-server_v0.19.3_linux_amd64.tar.gz

RUN tar -xvzf rtsp-simple-server_v0.19.3_linux_amd64.tar.gz

RUN mv rtsp-simple-server /bin/rtsp-simple-server

COPY entrypoint.sh /bin/entrypoint

ENTRYPOINT ["entrypoint"]
