cask "speedy-fan" do
  version "0.4"
  sha256 "08b2694548ebbef98fffc0c0d16753b146c9f3509087fa2d0bd71effc0bcdbfb"

  url "https://github.com/n14395/speedy-fan/releases/download/v#{version}/SpeedyFan-#{version}.dmg"
  name "SpeedyFan"
  desc "Fan monitor and controller for Apple Silicon Macs, from the menu bar"
  homepage "https://github.com/n14395/speedy-fan"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
