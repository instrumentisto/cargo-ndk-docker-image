#!/usr/bin/env bats


@test "Android NDK is installed" {
  run docker run --rm --pull never --entrypoint sh $IMAGE -c \
    'test -d ${NDK_HOME}'
  [ "$status" -eq 0 ]
}


@test "cargo-ndk runs ok" {
  run docker run --rm --pull never --entrypoint sh $IMAGE -c \
    'cargo ndk --help'
  [ "$status" -eq 0 ]
}


@test "Rust aarch64-linux-android target is installed" {
    run docker run --rm --pull never --entrypoint sh $IMAGE -c \
      'rustup target list --installed | grep -wq aarch64-linux-android'
    [ "$status" -eq 0 ]
}

@test "Rust armv7-linux-androideabi target is installed" {
    run docker run --rm --pull never --entrypoint sh $IMAGE -c \
      'rustup target list --installed | grep -wq armv7-linux-androideabi'
    [ "$status" -eq 0 ]
}

@test "Rust i686-linux-android target installed" {
    run docker run --rm --pull never --entrypoint sh $IMAGE -c \
      'rustup target list --installed | grep -wq i686-linux-android'
    [ "$status" -eq 0 ]
}

@test "Rust x86_64-linux-android target installed" {
    run docker run --rm --pull never --entrypoint sh $IMAGE -c \
      'rustup target list --installed | grep -wq x86_64-linux-android'
    [ "$status" -eq 0 ]
}


@test "make is installed" {
    run docker run --rm --pull never --entrypoint sh $IMAGE -c \
      'which make'
    [ "$status" -eq 0 ]
}
