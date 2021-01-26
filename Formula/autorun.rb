class AutoRun < Formula
  homepage "https://github.com/TBXark/autorun"
  url "https://github.com/TBXark/autorun/releases/download/0.0.1/autorun_0.0.1_darwin_amd64.tar.gz"
  sha256 "ec5cf4bf89cac22bcc17b7f24531bc2518379df79f305cdf605e1005f0e979d6"
  license "MIT"

  def install
    bin.install "xct"
  end

  test do
    system "#{bin}/autorun -v"
  end
end
