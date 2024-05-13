# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  version "0.4.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.1/slice-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "7312963eb2212cc4a2b7286f30ec7428746130bdbc1adf6945bba31e386a9a42"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.1/slice-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "688e8c430f756be8d71284f1f92e3fa3c1706025af4667f4486f2e99231803ba"
      def install
        bin.install "slice"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.1/slice-0.4.1-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "e076848c629982c36b0e9b380ab6bd4e21963c9f28663ae1a417cb6d89338352"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/0.4.1/slice-0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0ff91c5b5e872562a76e2e7528bb1e3eac845ddfda64ab0fc0d62118b32bb2a"
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
