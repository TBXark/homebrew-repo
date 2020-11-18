cask 'xcode-tool' do
  version '1.0.1'
  sha256 "1ccd1cdf5b9aac64ff1be01c594c6bbda519eddf045b09b43ac53de6802134eb"
  url "https://github.com/TBXark/xcode-tool/releases/download/#{version}/xct-v#{version}.zip"
  name 'xcode-tool'
  homepage 'https://github.com/TBXark/xcode-tool'
  binary 'xct'
  depends_on macos: '>= :catalina'

end
