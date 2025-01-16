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
    system "xct", "--help"
  end
end
