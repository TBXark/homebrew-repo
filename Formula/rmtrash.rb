# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rmtrash < Formula
  desc "rmtrash is a small utility that will move the file to macOS's Trash rather than obliterating the file (as rm does)."
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
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test rmtrash`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "rmtrash", "--version"
  end
end
