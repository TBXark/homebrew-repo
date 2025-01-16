class Rmtrash < Formula
  desc "Move files and directories to the trash"
  homepage "https://github.com/TBXark/rmtrash"
  url "https://github.com/TBXark/rmtrash/releases/download/0.6.5/rmtrash_0.6.5_universal.tar.gz"
  sha256 "5b3193675557d8e4eb321a80533bd90b27becfaf268711f3278a78c0ef5ac7fc"
  license "MIT"
  depends_on :macos
  def install
    bin.install "rmtrash"
    man1.install "rmtrash.1"
  end
  test do
    system "rmtrash", "--version"
  end
end
