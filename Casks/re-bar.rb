cask "re-bar" do
  version "1.2"
  sha256 "a822957464c118f0016a811e1efa761a5314ae87cc8c1350847cf43f39d59f6a"

  url "https://github.com/n14395/re-bar/releases/download/v#{version}/ReBar-#{version}.dmg"
  name "ReBar"
  desc "Menu bar spacing, colour themes and item ordering"
  homepage "https://github.com/n14395/re-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "ReBar.app"

  uninstall quit: "com.n14395.ReBar"

  zap trash: [
    "~/Library/Application Support/com.n14395.ReBar",
    "~/Library/Application Support/ReBar",
    "~/Library/Caches/com.n14395.ReBar",
    "~/Library/HTTPStorages/com.n14395.ReBar",
    "~/Library/Preferences/com.n14395.ReBar.plist",
    "~/Library/Saved Application State/com.n14395.ReBar.savedState",
  ]
end
