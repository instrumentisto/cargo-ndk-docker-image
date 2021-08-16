cargo-ndk Docker image
======================

[![Release](https://img.shields.io/github/v/release/instrumentisto/cargo-ndk-docker-image "Release")](https://github.com/instrumentisto/cargo-ndk-docker-image/releases)
[![CI](https://github.com/instrumentisto/cargo-ndk-docker-image/workflows/CI/badge.svg?branch=r21e-master "CI")](https://github.com/instrumentisto/cargo-ndk-docker-image/actions?query=workflow%3ACI+branch%3Ar21e-master)
[![Docker Hub](https://img.shields.io/docker/pulls/instrumentisto/cargo-ndk?label=Docker%20Hub%20pulls "Docker Hub pulls")](https://hub.docker.com/r/instrumentisto/cargo-ndk)

[Docker Hub](https://hub.docker.com/r/instrumentisto/cargo-ndk)
| [GitHub Container Registry](https://github.com/orgs/instrumentisto/packages/container/package/cargo-ndk)
| [Quay.io](https://quay.io/repository/instrumentisto/cargo-ndk)

[Changelog](https://github.com/instrumentisto/cargo-ndk-docker-image/blob/r21e-master/CHANGELOG.md)




## Supported tags and respective `Dockerfile` links

- [`2.4.1-ndkr21e-rust1.54-r0`, `2.4.1-ndkr21e-rust1.54`, `2.4.1-ndkr21e`, `2.4-ndkr21e`, `2-ndkr21e`][101]




## Supported targets

- `aarch64-linux-android`
- `armv7-linux-androideabi`
- `x86_64-linux-android`
- `i686-linux-android`




## What is cargo-ndk?

This [Cargo] extension handles all the environment configuration needed for successfully building libraries for Android from a [Rust] codebase, with support for generating the correct `jniLibs/` directory structure.

This image also contains [Android NDK] and [Rust] targets for building source code for [Android].

> https://crates.io/crates/cargo-ndk

> https://developer.android.com/ndk




## How to use this Docker image

Mount your project directory and run the `cargo ndk` command:
```bash
docker run --rm -v /my/rust/project:/app -w /app instrumentisto/cargo-ndk \
    cargo ndk -o ./jniLibs build
```

After doing that you will see `jniLibs/` folder with libraries for all the supported [Android] targets.




## Image versions


### `X`

Latest tag of `X` [cargo-ndk]'s major version.


### `X.Y`

Latest tag of `X.Y` [cargo-ndk]'s minor version.


### `X.Y.Z`

Latest tag of a concrete `X.Y` version of [cargo-ndk].


### `ndkrA`

Latest tag containing a pinned concrete `rA` version of [Android NDK].


### `rustM.N`

Latest tag containing a pinned `M.N` minor version of [Rust].


### `X.Y.Z-ndkrA-rustM.N-rN`

Concrete `N` image revision tag of a [cargo-ndk]'s concrete `X.Y.Z` version with pinned `rA` version of [Android NDK] and pinned `M.N` version of [Rust].

Once build, it's never updated.




## License

[cargo-ndk] is licensed under [Apache-2.0][5]/[MIT][6] licenses.  
[Android NDK] is licensed under [its own license][4].

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.

The [sources][3] for producing `instrumentisto/cargo-ndk` Docker image are licensed under [Blue Oak Model License 1.0.0][2].




## Issues

We can't notice comments in the [DockerHub] (or other container registries) so don't use them for reporting issue or asking question.

If you have any problems with or questions about this image, please contact us through a [GitHub issue][1].





[Android]: https://www.android.com
[Android NDK]: https://developer.android.com/ndk
[Apache-2.0]: https://choosealicense.com/licenses/apache-2.0
[Cargo]: https://doc.rust-lang.org/cargo
[cargo-ndk]: https://crates.io/crates/cargo-ndk
[DockerHub]: https://hub.docker.com
[MIT]: https://choosealicense.com/licenses/mit
[Rust]: https://www.rust-lang.org

[1]: https://github.com/instrumentisto/cargo-ndk-docker-image/issues
[2]: https://github.com/instrumentisto/cargo-ndk-docker-image/blob/r21e-master/LICENSE.md
[3]: https://github.com/instrumentisto/cargo-ndk-docker-image
[4]: https://developer.android.com/studio/terms
[5]: https://github.com/bbqsrc/cargo-ndk/blob/main/LICENSE-APACHE
[6]: https://github.com/bbqsrc/cargo-ndk/blob/main/LICENSE-MIT

[101]: https://github.com/instrumentisto/cargo-ndk-docker-image/blob/r21e-master/Dockerfile
