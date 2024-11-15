# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  version "0.4.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.2/slice-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "6dc24369bd50676a4ce428803880a7c3aa9278a2b97d4e2cd43d2b527eb8a192"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.2/slice-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "3fa926600870ca8abf4054f64525506c2772891df86058320248811902db2783"
      def install
        bin.install "slice"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.2/slice-0.4.2-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "bc0f3fe12717cdee21c29c2e37ebaedce5dc7616fede73205bf173162b7a0b36"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.2/slice-0.4.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5aa90485a564df8e50271ee44d6956485e39b58beab9d417f936ae0f7b46234a"
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
