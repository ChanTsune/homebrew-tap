# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  version "0.2.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "83b84cd37e2e9ec2c502dcf3179373192e4ee34bcd01f4f826b312c63b83bb4e"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2bea5cf9746169729f918782fda2969be8166aaa446a23ba3c854a63732d76da"
      def install
        bin.install "slice"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "133d32a0b341a0fbea7698bc565a27cd75500a805cbb53e0c1aee5632d2e8830"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7cf8990d2a766b80ecf4c7b92a7ddb92cb5d74373943cb1e9a38983cf5e0919b"
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
