cask "window-shift" do
  version "0.4"
  sha256 "5bbd5dbba724535123a1f39cfc933b6950a602c40f760fb9d3697302fc5ba335"

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

  uninstall quit: "com.n14395.WindowShift"

  zap trash: [
    "~/Library/Application Support/com.n14395.WindowShift",
    "~/Library/Application Support/WindowShift",
    "~/Library/Caches/com.n14395.WindowShift",
    "~/Library/HTTPStorages/com.n14395.WindowShift",
    "~/Library/Preferences/com.n14395.WindowShift.plist",
    "~/Library/Saved Application State/com.n14395.WindowShift.savedState",
  ]
end
