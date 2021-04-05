rust-ndk-builder Docker image
========================

[![Release](https://img.shields.io/github/v/release/instrumentisto/rust-ndk-builder-docker-image "Release")](https://github.com/instrumentisto/rust-ndk-builder-docker-image/releases)
[![CI](https://github.com/instrumentisto/rust-ndk-builder-docker-image/workflows/CI/badge.svg?branch=master "CI")](https://github.com/instrumentisto/rust-ndk-builder-docker-image/actions?query=workflow%3ACI+branch%3Amaster)
[![Docker Hub](https://img.shields.io/docker/pulls/instrumentisto/rust-ndk-builder?label=Docker%20Hub%20pulls "Docker Hub pulls")](https://hub.docker.com/r/instrumentisto/rust-ndk-builder)

[Docker Hub](https://hub.docker.com/r/instrumentisto/rust-ndk-builder)
| [GitHub Container Registry](https://github.com/orgs/instrumentisto/packages/container/package/rust-ndk-builder)
| [Quay.io](https://quay.io/repository/instrumentisto/rust-ndk-builder)

[Changelog](https://github.com/instrumentisto/rust-ndk-builder-docker-image/blob/master/CHANGELOG.md)




## Supported tags and respective `Dockerfile` links

- [`r21e-r0`, `r21e-r0-debian-slim-buster`, `r21e-r0-debian` `r21e`, `r21e-debian-slim-buster`, `r21e-debian`, `debian-slim-buster`, `debian`, `lastest`][101]




## What this Docker image for?

Docker image with [cargo-ndk], [Android NDK] and Rust targets for building Rust code for Android.

[cargo-ndk]: https://crates.io/crates/cargo-ndk
[Android NDK]: https://developer.android.com/ndk




## What targets are supported by this Docker image?

- aarch64-linux-android
- armv7-linux-androideabi
- x86_64-linux-android
- i686-linux-android




## How to use this Docker image

```bash
docker run --rm -v '/some/rust/project:/app' instrumentisto/rust-ndk-builder cargo ndk -o /app/jniLibs build
```

After that you will see `jniLibs` folder with libraries for all supported by Android targets.




## License

[cargo ndk] is licensed under [Apache-2.0]/[MIT] license

View [license information][4] for the Android NDK contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.

The [sources][3] for producing `instrumentisto/rust-ndk-builder` Docker image are licensed under [Blue Oak Model License 1.0.0][2].




## Issues

We can't notice comments in the [DockerHub] (or other container registries) so don't use them for reporting issue or asking question.

If you have any problems with or questions about this image, please contact us through a [GitHub issue][1].





[DockerHub]: https://hub.docker.com
[Apache-2.0]: https://choosealicense.com/licenses/apache-2.0/
[MIT]: https://choosealicense.com/licenses/mit/

[1]: https://github.com/instrumentisto/rust-ndk-builder-docker-image/issues
[2]: https://github.com/instrumentisto/rust-ndk-builder-docker-image/blob/master/LICENSE.md
[3]: https://github.com/instrumentisto/rust-ndk-builder-docker-image
[4]: https://developer.android.com/studio/terms

[101]: https://github.com/instrumentisto/rust-ndk-builder-docker-image/blob/master/Dockerfile
