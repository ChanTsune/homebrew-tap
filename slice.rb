# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  version "0.3.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "da30a35d352eedc30add0ba591b066bb9257de65e558855c3dd7221bb7135f7c"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "79fca45b93e0ad23731ae9a4f343ce767c8c077a02a982a6f49f08e26a3f7859"
      def install
        bin.install "slice"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "a146f14b5a0d42e7630987c4a4717187d641e340109937dc3f1377e92d1a44a1"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a569a409b496f70703f79f6044832773d973e0d4fede8c24e1a10073477be2b2"
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
