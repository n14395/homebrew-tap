cask "speedy-spaces" do
  version "0.3"
  sha256 "ff093614add487d64f14dfd3a8ee8ea1d9fbcef5ed06000f46b752fd39e26e16"

  url "https://github.com/n14395/speedy-spaces/releases/download/v#{version}/SpeedySpaces-#{version}.dmg"
  name "SpeedySpaces"
  desc "Names, icons and hotkeys for Spaces virtual desktops"
  homepage "https://github.com/n14395/speedy-spaces"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SpeedySpaces.app"

  uninstall quit: "com.speedyspaces.SpeedySpaces"

  zap trash: [
    "~/Library/Application Support/com.speedyspaces.SpeedySpaces",
    "~/Library/Application Support/SpeedySpaces",
    "~/Library/Caches/com.speedyspaces.SpeedySpaces",
    "~/Library/HTTPStorages/com.speedyspaces.SpeedySpaces",
    "~/Library/Preferences/com.speedyspaces.SpeedySpaces.plist",
    "~/Library/Saved Application State/com.speedyspaces.SpeedySpaces.savedState",
  ]
end
