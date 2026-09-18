cask "re-bar" do
  version "1.0"
  sha256 "7e199fc9c01bfc6b51fe2dcef5b7a811eb03885f4db7b015ad15ec3423092260"

  url "https://github.com/n14395/re-bar/releases/download/v#{version}/ReBar-#{version}.dmg"
  name "ReBar"
  desc "Menu bar spacing, colour themes and item ordering"
  homepage "https://github.com/n14395/re-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

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
