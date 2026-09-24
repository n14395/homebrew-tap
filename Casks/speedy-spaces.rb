cask "speedy-spaces" do
  version "0.4"
  sha256 "3abf3a47299b7b5f89d629087266f958ce341a2c4da3a7a568d59f96bbd23319"

  url "https://github.com/n14395/speedy-spaces/releases/download/v#{version}/SpeedySpaces-#{version}.dmg"
  name "SpeedySpaces"
  desc "Names, icons and hotkeys for Spaces virtual desktops"
  homepage "https://github.com/n14395/speedy-spaces"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SpeedySpaces.app"

  uninstall quit: "com.speedyspaces.SpeedySpaces"

  zap trash: [
    "~/Library/Application Support/com.speedyspaces.SpeedySpaces",
    "~/Library/Application Support/SpeedySpaces",
    "~/Library/Caches/com.speedyspaces.SpeedySpaces",
    "~/Library/HTTPStorages/com.speedyspaces.SpeedySpaces",
    "~/Library/Preferences/com.speedyspaces.SpeedySpaces.plist",
    "~/Library/Saved Application State/com.speedyspaces.SpeedySpaces.savedState",
  ]
end
