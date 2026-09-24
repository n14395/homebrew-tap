cask "more-corners" do
  version "0.3"
  sha256 "27e7b3c57428518d83f7e880a45b55cc9da744e73cb785e46ce74b42550dad1c"

  url "https://github.com/n14395/more-corners/releases/download/v#{version}/MoreCorners-#{version}.dmg"
  name "MoreCorners"
  desc "Hot corners with per-modifier overrides and dozens of extra actions"
  homepage "https://github.com/n14395/more-corners"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MoreCorners.app"

  uninstall quit: "dev.nwf.MoreCorners"

  zap trash: [
    "~/Library/Application Support/dev.nwf.MoreCorners",
    "~/Library/Application Support/MoreCorners",
    "~/Library/Caches/dev.nwf.MoreCorners",
    "~/Library/HTTPStorages/dev.nwf.MoreCorners",
    "~/Library/Preferences/dev.nwf.MoreCorners.plist",
    "~/Library/Saved Application State/dev.nwf.MoreCorners.savedState",
  ]
end
