cask "re-bar" do
  version "1.1"
  sha256 "ececa18bb38eb0915286525095870eda172858a7f47b75c9af1bfcf1bd67c0f0"

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

  uninstall quit: "com.n14395.re-bar"

  zap trash: [
    "~/Library/Application Support/com.n14395.re-bar",
    "~/Library/Application Support/ReBar",
    "~/Library/Caches/com.n14395.re-bar",
    "~/Library/HTTPStorages/com.n14395.re-bar",
    "~/Library/Preferences/com.n14395.re-bar.plist",
    "~/Library/Saved Application State/com.n14395.re-bar.savedState",
  ]
end
