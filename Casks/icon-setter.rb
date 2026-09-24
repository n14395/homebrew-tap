cask "icon-setter" do
  version "0.2"
  sha256 "40366ec88d3a7160817ef24fc00b5b38ccd78c9637560e8388f673932ff78d2d"

  url "https://github.com/n14395/icon-setter/releases/download/v#{version}/IconSetter-#{version}.dmg"
  name "Icon Setter"
  desc "A small native macOS app for giving folders and files custom icons."
  homepage "https://github.com/n14395/icon-setter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "IconSetter.app"

  uninstall quit: "com.n14395.icon-setter"

  zap trash: [
    "~/Library/Application Support/com.n14395.icon-setter",
    "~/Library/Application Support/IconSetter",
    "~/Library/Caches/com.n14395.icon-setter",
    "~/Library/HTTPStorages/com.n14395.icon-setter",
    "~/Library/Preferences/com.n14395.icon-setter.plist",
    "~/Library/Saved Application State/com.n14395.icon-setter.savedState",
  ]
end
