cask "speedy-fan" do
  version "0.3"
  sha256 "4345649bdb31c5108aa97317316905d83477cb20b1f5f6519ac4a607c694eb72"

  url "https://github.com/n14395/speedy-fan/releases/download/v#{version}/SpeedyFan-#{version}.dmg"
  name "SpeedyFan"
  desc "Fan monitor and controller for Apple Silicon Macs, from the menu bar"
  homepage "https://github.com/n14395/speedy-fan"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "SpeedyFan.app"

  uninstall quit: "com.speedyfan.app"

  zap trash: [
    "~/Library/Application Support/com.speedyfan.app",
    "~/Library/Application Support/SpeedyFan",
    "~/Library/Caches/com.speedyfan.app",
    "~/Library/HTTPStorages/com.speedyfan.app",
    "~/Library/Preferences/com.speedyfan.app.plist",
    "~/Library/Saved Application State/com.speedyfan.app.savedState",
  ]
end
