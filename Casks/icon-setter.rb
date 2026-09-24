cask "icon-setter" do
  version "0.3"
  sha256 "61845c1e169312ebbaeba663f748ae3cd78182925796e63709c7215d9965ccca"

  url "https://github.com/n14395/icon-setter/releases/download/v#{version}/IconSetter-#{version}.dmg"
  name "Icon Setter"
  desc "Give folders and files custom icons"
  homepage "https://github.com/n14395/icon-setter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "IconSetter.app"

  uninstall quit: "com.n14395.IconSetter"

  zap trash: [
    "~/Library/Application Support/com.n14395.IconSetter",
    "~/Library/Application Support/IconSetter",
    "~/Library/Caches/com.n14395.IconSetter",
    "~/Library/HTTPStorages/com.n14395.IconSetter",
    "~/Library/Preferences/com.n14395.IconSetter.plist",
    "~/Library/Saved Application State/com.n14395.IconSetter.savedState",
  ]
end
