# Use the container supplied by `cross` as a starting point
FROM ghcr.io/cross-rs/aarch64-unknown-linux-gnu:latest

RUN dpkg --add-architecture arm64 && \
    apt-get update && \
    apt-get install --assume-yes libasound2-dev:arm64 libssl-dev:arm64 libpulse-dev:arm64 libdbus-1-dev:arm64 libc6-dev-arm64-cross

ENV PKG_CONFIG_PATH="/usr/lib/aarch64-linux-gnu/pkgconfig/:${PKG_CONFIG_PATH}"
