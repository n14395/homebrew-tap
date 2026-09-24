cask "speedy-launcher" do
  version "1.8"
  sha256 "deaa05e9186a8bba8dff55f396abfdfb0e76f4f4b0dcec2eccfab7f344ce4e51"

  url "https://github.com/n14395/speedy-launcher/releases/download/v#{version}/SpeedyLauncher-#{version}.dmg"
  name "SpeedyLauncher"
  desc "Menu bar launcher for apps, folders, Shortcuts and categories"
  homepage "https://github.com/n14395/speedy-launcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SpeedyLauncher.app"

  uninstall quit: "com.n14395.SpeedLauncher"

  zap trash: "~/Library/Containers/com.n14395.SpeedLauncher"
end
