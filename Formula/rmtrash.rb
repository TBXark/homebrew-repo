# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rmtrash < Formula
  desc "rmtrash is a small utility that will move the file to OS X's Trash rather than obliterating the file (as rm does)."
  homepage "https://github.com/TBXark/rmtrash"
  url "https://github.com/TBXark/rmtrash/archive/refs/tags/0.5.2.tar.gz"
  sha256 "5a4c91d79e8616126e2902577c61dc7af97418c3fb53e65b7ac28a37dfe394d6"
  license "MIT"

  depends_on xcode: "10.2"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/rmtrash"
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
    system "rmtrash"
  end
end
