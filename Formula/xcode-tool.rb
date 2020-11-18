class XcodeTool < Formula
  desc "A collection of useful tools for an xcode project"
  homepage "https://github.com/TBXark/xcode-tool"
  url "https://github.com/TBXark/xcode-tool/releases/download/1.0.1/xct-v1.0.1.zip"
  sha256 "1ccd1cdf5b9aac64ff1be01c594c6bbda519eddf045b09b43ac53de6802134eb"
  license "MIT"

  def install
    bin.install "xct"
  end

  test do
    system "#{bin}/xct"
  end
end
