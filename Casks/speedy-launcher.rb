cask "speedy-launcher" do
  version "1.7.0"
  sha256 "a06de5e3c8bdb0361348337d1c7d5bbac358e2563d2ede9cf3f64af3873f5de7"

  url "https://github.com/n14395/speedy-launcher/releases/download/v#{version}/SpeedyLauncher-#{version}.dmg"
  name "SpeedyLauncher"
  desc "Menu bar launcher for apps, folders, Shortcuts and categories"
  homepage "https://github.com/n14395/speedy-launcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SpeedyLauncher.app"

  uninstall quit: "com.n14395.SpeedLauncher"

  zap trash: "~/Library/Containers/com.n14395.SpeedLauncher"
end
