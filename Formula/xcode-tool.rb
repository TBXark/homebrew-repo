class XcodeTool < Formula
  desc "A collection of useful tools for an xcode project"
  homepage "https://github.com/TBXark/xcode-tool"
  url "https://github.com/TBXark/xcode-tool/releases/download/1.0.1/xct-v1.0.1.zip"
  sha256 "fe9ceb8989bfe85f0545e496d968d3ebd18daaca8b491d6e44fec8e51e2cfe63"
  license "MIT"

  def install
    bin.install "xct"
  end

  test do
    system "#{bin}/xct"
  end
end
