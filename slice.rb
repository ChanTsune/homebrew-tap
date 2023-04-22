# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  version "0.1.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d7d1b28840ada83ae085207dd6a3d2cfed27890ddafc1b69909ed4966537ebbf"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3d9b0523eed707c63211b97d1edd88034f7ed50b616a868d0a4b819a77c880db"
      def install
        bin.install "slice"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "fac025f8af26bc5602016ba7cb8952c72d68bc577347b2413b23fc7665dd5352"
      def install
        bin.install "slice"
      end
    end
    on_intel do
      url "https://github.com/ChanTsune/slice/releases/download/#{version}/slice-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcb7dc895daf8273f3243b0436609ce74531aa0dc9fde079bdcc53894e74e5c3"
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
