# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rmtrash < Formula
  desc "rmtrash is a small utility that will move the file to OS X's Trash rather than obliterating the file (as rm does)."
  homepage ""
  url "https://github.com/TBXark/rmtrash/archive/refs/tags/0.3.3.tar.gz"
  sha256 "3acc58b297d60c084c3171809db322f13bc121f1bcf17c1feb8772b4db4a2f3d"
  license ""

  # depends_on "make" => :build

  def install
    system "make"
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
    system "rmtrash"
  end
end
