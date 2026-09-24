cask "window-shift" do
  version "0.3"
  sha256 "f163b47a9316c60596a69a98d186f746369344940dbd615a868cd464d1791e56"

  url "https://github.com/n14395/window-shift/releases/download/v#{version}/WindowShift-#{version}.dmg"
  name "WindowShift"
  desc "Move and resize windows by dragging anywhere inside them"
  homepage "https://github.com/n14395/window-shift"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "WindowShift.app"

  uninstall quit: "dev.nwf.WindowShift"

  zap trash: [
    "~/Library/Application Support/dev.nwf.WindowShift",
    "~/Library/Application Support/WindowShift",
    "~/Library/Caches/dev.nwf.WindowShift",
    "~/Library/HTTPStorages/dev.nwf.WindowShift",
    "~/Library/Preferences/dev.nwf.WindowShift.plist",
    "~/Library/Saved Application State/dev.nwf.WindowShift.savedState",
  ]
end
