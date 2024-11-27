# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class XcodeTool < Formula
  desc "A collection of useful tools for an xcode project"
  homepage "https://github.com/TBXark/xcode-tool"
  url "https://github.com/TBXark/xcode-tool/archive/refs/tags/1.0.2.tar.gz"
  sha256 "86fa8a0210d9707f06a7e7891cd8bf6521b83cf4d2781759e6d48ecad5553dca"
  license "MIT"

  depends_on xcode: "10.2"
  depends_on :macos
  
  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/xct"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test xcode-tool`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "xct", "--help"
  end
end
