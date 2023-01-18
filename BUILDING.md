# Cross compiling for arm64
docker build -t spotifyd-deps:arm64 --file aarch64.Dockerfile .
cross run --target aarch64-unknown-linux-gnu --features alsa_backend,dbus_mpris -v --release

## Notes
* --debug has trouble findling glibc for some reason
* structure from here: https://github.com/cross-rs/wiki_assets/tree/main/FAQ/dbus