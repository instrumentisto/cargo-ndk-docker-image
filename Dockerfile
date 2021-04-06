# https://hub.docker.com/_/rust
ARG rust_ver=1.51
FROM rust:${rust_ver}-slim-buster

ARG android_ndk_ver=r22b
ARG cargo_ndk_ver=2.2.0
ARG build_rev=0

LABEL org.opencontainers.image.source="\
    https://github.com/instrumentisto/cargo-ndk-docker-image"


# Install Rust targets for Android platforms
RUN rustup target add aarch64-linux-android \
                      armv7-linux-androideabi \
                      i686-linux-android \
                      x86_64-linux-android


# Install Android NDK
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y --no-install-recommends --no-install-suggests \
            ca-certificates \
 && update-ca-certificates \
    \
 # Install installation tools
 && toolDeps="curl unzip" \
 && apt-get install -y --no-install-recommends --no-install-suggests \
            $toolDeps \
    \
 # Install NDK itself
 && curl -fL -o /tmp/android-ndk.zip \
         https://dl.google.com/android/repository/android-ndk-${android_ndk_ver}-linux-x86_64.zip \
 && unzip /tmp/android-ndk.zip -d /usr/local/ \
    \
 # Cleanup unnecessary stuff
 && apt-get purge -y --auto-remove \
                  -o APT::AutoRemove::RecommendsImportant=false \
            $toolDeps \
 && rm -rf /var/lib/apt/lists/* \
           /tmp/*

# Path to the Android NDK for cargo-ndk Cargo plugin
ENV ANDROID_NDK_HOME=/usr/local/android-ndk-${android_ndk_ver} \
    NDK_HOME=/usr/local/android-ndk-${android_ndk_ver}



# Install cargo-ndk Cargo plugin
RUN cargo install --version=${cargo_ndk_ver} cargo-ndk \
    \
  # Cleanup unnecessary stuff
  && rm -rf /usr/local/cargo/registry/ \
            /tmp/*
