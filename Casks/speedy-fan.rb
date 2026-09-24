cask "speedy-fan" do
  version "0.5"
  sha256 "80ad77a1b7f0fba1734cc77d691d5eecfd23709f827e9796808fad809c4fabf5"

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

  uninstall quit: "com.n14395.SpeedyFan"

  zap trash: [
    "~/Library/Application Support/com.n14395.SpeedyFan",
    "~/Library/Application Support/SpeedyFan",
    "~/Library/Caches/com.n14395.SpeedyFan",
    "~/Library/HTTPStorages/com.n14395.SpeedyFan",
    "~/Library/Preferences/com.n14395.SpeedyFan.plist",
    "~/Library/Saved Application State/com.n14395.SpeedyFan.savedState",
  ]
end
