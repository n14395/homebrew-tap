cask "speedy-torrent" do
  version "0.4"
  sha256 "095b4b513a92c6f4517e84f6c02ea9e357a048ef3be083e5c8a3923e30fb1df1"

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

  uninstall quit: "dev.nwf.SpeedyTorrent"

  zap trash: [
    "~/Library/Application Support/dev.nwf.SpeedyTorrent",
    "~/Library/Application Support/SpeedyTorrent",
    "~/Library/Caches/dev.nwf.SpeedyTorrent",
    "~/Library/HTTPStorages/dev.nwf.SpeedyTorrent",
    "~/Library/Preferences/dev.nwf.SpeedyTorrent.plist",
    "~/Library/Saved Application State/dev.nwf.SpeedyTorrent.savedState",
  ]
end
