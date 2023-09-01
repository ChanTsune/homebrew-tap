#!/bin/bash
set -eu

REPO_URL="https://github.com/ChanTsune/slice"
REPO_RELEASES_URL="$REPO_URL/releases"

set +u
if [[ -z $VERSION ]]; then
    VERSION=$(lastversion "$REPO_URL")
fi
set -u

MACOS_ARM64_URL="$REPO_RELEASES_URL/download/$VERSION/slice-$VERSION-aarch64-apple-darwin.tar.gz"
MACOS_INTEL_URL="$REPO_RELEASES_URL/download/$VERSION/slice-$VERSION-x86_64-apple-darwin.tar.gz"
LINUX_ARM64_URL="$REPO_RELEASES_URL/download/$VERSION/slice-$VERSION-arm-unknown-linux-gnueabihf.tar.gz"
LINUX_INTEL_URL="$REPO_RELEASES_URL/download/$VERSION/slice-$VERSION-x86_64-unknown-linux-musl.tar.gz"

FILE_HASH_MACOS_ARM64=$(curl -sL "$MACOS_ARM64_URL" | shasum -a 256 | awk '{ print $1 }')
FILE_HASH_MACOS_INTEL=$(curl -sL "$MACOS_INTEL_URL" | shasum -a 256 | awk '{ print $1 }')
FILE_HASH_LINUX_ARM64=$(curl -sL "$LINUX_ARM64_URL" | shasum -a 256 | awk '{ print $1 }')
FILE_HASH_LINUX_INTEL=$(curl -sL "$LINUX_INTEL_URL" | shasum -a 256 | awk '{ print $1 }')

minijinja-cli templates/slice.rb.j2 --strict \
    -D version="$VERSION" \
    -D macos_arm_url="$MACOS_ARM64_URL" \
    -D macos_arm_sha256="$FILE_HASH_MACOS_ARM64" \
    -D macos_intel_url="$MACOS_INTEL_URL" \
    -D macos_intel_sha256="$FILE_HASH_MACOS_INTEL" \
    -D linux_arm_url="$LINUX_ARM64_URL" \
    -D linux_arm_sha256="$FILE_HASH_LINUX_ARM64" \
    -D linux_intel_url="$LINUX_INTEL_URL" \
    -D linux_intel_sha256="$FILE_HASH_LINUX_INTEL" > slice.rb
