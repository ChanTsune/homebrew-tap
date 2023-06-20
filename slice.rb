# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  version "0.2.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2a88ce7da02dedad22d2c6950afe342aa314487c10d7974829704ee5bc27f774"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8465aae1ef5a47f7993776d526ca21f8b7d49283bc923b7796f03a4e08cb6070"
      def install
        bin.install "slice"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "09c0f31eeb4841f0cb885f54bc05c267ab8c5c8c92a5e8ac242cdea3fc96a24a"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f289df022977d033ea3c4e72d07031b06f908ed1b46a27678efb64706a74b91c"
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
