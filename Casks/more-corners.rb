cask "more-corners" do
  version "0.2"
  sha256 "c6842d545ca86e14ddb569a6f85700e888ffac2fe5b023707dfe7fb0db27708e"

  url "https://github.com/n14395/more-corners/releases/download/v#{version}/MoreCorners-#{version}.dmg"
  name "MoreCorners"
  desc "Hot corners with per-modifier overrides and dozens of extra actions"
  homepage "https://github.com/n14395/more-corners"

  livecheck do
    url :url
    strategy :github_latest
  end

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
