# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  version "0.5.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/0.5.0/slice-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e051ccfd54783cc45bd278961ef76b380dba87d845d7fd84a138ec9c10e0b665"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/0.5.0/slice-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "82568d93f18ca32569a1bd2712354910ad575845ca49910975a6a067becf4ff8"
      def install
        bin.install "slice"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/0.5.0/slice-0.5.0-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "882089a0229c636be6e9f0bddd50b684d0f9172e6705a4c19c78abd49aa9097e"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/0.5.0/slice-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c2835b0912669b064d9565295de12531b13254f7ec9959acf741d69dbe97773b"
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
