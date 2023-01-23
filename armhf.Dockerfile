FROM ghcr.io/cross-rs/armv7-unknown-linux-gnueabihf:main
ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg --add-architecture armhf && \
    apt-get update && \
    apt-get install --assume-yes libasound2-dev:armhf libssl-dev:armhf libpulse-dev:armhf libdbus-1-dev:armhf libc6-dev-armhf-cross

ENV PKG_CONFIG_PATH="/usr/lib/arm-linux-gnueabihf/pkgconfig/:${PKG_CONFIG_PATH}"