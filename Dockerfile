FROM hkjn/alpine

# Set up a new disk with:
# docker run --rm --cap-add SYS_ADMIN --device /dev/sda:/dev/sda -e DEVICE=/dev/sda -it hkjn/alpine-crypt setup

RUN apk add --no-cache nano lvm2 cryptsetup e2fsprogs bash

WORKDIR /usr/local/bin/
COPY ["setup", "./"]