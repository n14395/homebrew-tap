cask "speedy-torrent" do
  version "0.5"
  sha256 "11e2f711789f07185dc9b54cedab9f09f51f46b86b41685c00064bd06249b6d5"

  url "https://github.com/n14395/speedy-torrent/releases/download/v#{version}/SpeedyTorrent-#{version}.dmg"
  name "SpeedyTorrent"
  desc "Native BitTorrent client with a from-scratch Swift protocol engine"
  homepage "https://github.com/n14395/speedy-torrent"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "SpeedyTorrent.app"

  uninstall quit: "com.n14395.SpeedyTorrent"

  zap trash: [
    "~/Library/Application Support/com.n14395.SpeedyTorrent",
    "~/Library/Application Support/SpeedyTorrent",
    "~/Library/Caches/com.n14395.SpeedyTorrent",
    "~/Library/HTTPStorages/com.n14395.SpeedyTorrent",
    "~/Library/Preferences/com.n14395.SpeedyTorrent.plist",
    "~/Library/Saved Application State/com.n14395.SpeedyTorrent.savedState",
  ]
end
