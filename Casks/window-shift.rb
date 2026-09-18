cask "window-shift" do
  version "0.2"
  sha256 "832cdcfbec8bd0b2239be9169163f037800343a5acd8c4ca651b564b8cb0dc11"

  url "https://github.com/n14395/window-shift/releases/download/v#{version}/WindowShift-#{version}.dmg"
  name "WindowShift"
  desc "Move and resize windows by dragging anywhere inside them"
  homepage "https://github.com/n14395/window-shift"

  livecheck do
    url :url
    strategy :github_latest
  end

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
