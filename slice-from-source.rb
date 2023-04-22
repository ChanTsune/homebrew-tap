# typed: false
# frozen_string_literal: true

class Slice < Formula
  desc "Contents of a file using syntax similar to Python's notation"
  homepage "https://github.com/ChanTsune/slice"
  url "https://github.com/ChanTsune/slice/archive/0.1.0.tar.gz"
  sha256 "34df9229e9f9d011edfcf130f6b5c8dd1585d281d00784a853fd1dd8850cb5a9"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/ChanTsune/slice.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # executables being tested: `system "#{bin}/slice", "do", "something"`.
    system "false"
  end
end
