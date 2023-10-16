# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  version "0.4.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.0/slice-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "85ed50537821489cd85bde00bd355f51abe4335b600c348c885c99ad1ebe22c9"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.0/slice-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "2eeb69e85160e603355863d15da17fbb56bb21333126f260d1cd28475b34ece2"
      def install
        bin.install "slice"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.0/slice-0.4.0-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "73694de03dba8f01e323696e62a8284fcbc3e2aadc3fdd948e75bbc71b8bf13c"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.0/slice-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f56e842350dc04ae805edff81782469c1ae1157329b4f934d4c521137e43b2ea"
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
