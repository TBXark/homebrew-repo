# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rmtrash < Formula
  desc "rmtrash is a small utility that will move the file to macOS's Trash rather than obliterating the file (as rm does)."
  homepage "https://github.com/TBXark/rmtrash"
  url "https://github.com/TBXark/rmtrash/releases/download/0.6.0/rmtrash_0.6.0_universal.tar.gz"
  sha256 "768c8af00a9f06fb84859d2f65af226f1406c65cfcd2fdb43dd958213f3e9797"
  license "MIT"

  def install
    bin.install "rmtrash"
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
