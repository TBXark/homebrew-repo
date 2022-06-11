# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class MwebExport < Formula
  desc "MWeb libiary catalog generation tool"
  homepage "https://github.com/TBXark/mweb-export"
  url "https://github.com/TBXark/mweb-export/archive/refs/tags/0.0.2.tar.gz"
  sha256 "454c3157f00ec9c307cd5cea6cb9d3c2ba3ac469fd1b1a226a533a6c7052c8c2"
  license "MIT"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test mweb-export`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "mweb-export", "--help"
  end
end
