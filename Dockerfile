ARG rust_ver=1.51
FROM ghcr.io/instrumentisto/rust:${rust_ver}-slim-buster

ARG android_ndk_ver=r21e
ARG build_rev=0

LABEL org.opencontainers.image.source="\
    https://github.com/instrumentisto/rust-ndk-builder-docker-image"

RUN apt-get update \
 && apt-get upgrade -y \
    \
 # Install tools needed for Android NDK installation
 && toolDeps="apt-transport-https wget unzip gnupg" \
 && apt-get install -y --no-install-recommends --no-install-suggests \
            $toolDeps \
    \
 # Install Android NDK
 && wget https://dl.google.com/android/repository/android-ndk-${android_ndk_ver}-linux-x86_64.zip \
 && unzip android-ndk-${android_ndk_ver}-linux-x86_64.zip \
    \
 # Install Rust targets for Android platform
 && rustup target add aarch64-linux-android \
                      armv7-linux-androideabi \
                      x86_64-linux-android \
                      i686-linux-android \
    \
 # Install cargo-ndk crate
 && cargo install cargo-ndk \
    \
 # Cleanup unnecessary stuff
 && apt-get purge -y --auto-remove \
                  -o APT::AutoRemove::RecommendsImportant=false \
            $toolDeps \
 && rm -rf /var/lib/apt/lists/* \
           /tmp/*

# Path to the Android NDK for cargo-ndk crate.
ENV NDK_HOME=/android-ndk-${android_ndk_ver}

WORKDIR "/app"
