cask "speedy-torrent" do
  version "0.3"
  sha256 "ce817ba0680409197893453d0c86050a943b59757414abda1b81415819ea6d50"

  url "https://github.com/n14395/speedy-torrent/releases/download/v#{version}/SpeedyTorrent-#{version}.dmg"
  name "SpeedyTorrent"
  desc "Native BitTorrent client with a from-scratch Swift protocol engine"
  homepage "https://github.com/n14395/speedy-torrent"

  livecheck do
    url :url
    strategy :github_latest
  end

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
