# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  version "0.3.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e556aff9c6ca5fb3cb4d3106b3efa60012d5dbaf721046e6c9d73b75e036afe3"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d96391e264543093c6b1dccc82c85b08a8588ebd18495743a6f037f643b51b14"
      def install
        bin.install "slice"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "7d814c611a21ebd20ae5ba696be4e577e8fedf4667b79cc7ef9a81daec12222b"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8fcea3c1df790caee8b9945f28e675d8b60ac6e5573b85093cec65ed2adfe666"
      def install
        bin.install "slice"
      end
    end
  end

  test do
    # executables being tested: `system "#{bin}/slice", "do", "something"`.
    system "false"
  end
end
