cask "speedy-spaces" do
  version "0.5"
  sha256 "c4f736ca9fff8487ec55a6c4d07e7aee56c9f84d9363dc6c2834bd57efd7fa8e"

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

  uninstall quit: "com.n14395.SpeedySpaces"

  zap trash: [
    "~/Library/Application Support/com.n14395.SpeedySpaces",
    "~/Library/Application Support/SpeedySpaces",
    "~/Library/Caches/com.n14395.SpeedySpaces",
    "~/Library/HTTPStorages/com.n14395.SpeedySpaces",
    "~/Library/Preferences/com.n14395.SpeedySpaces.plist",
    "~/Library/Saved Application State/com.n14395.SpeedySpaces.savedState",
  ]
end
