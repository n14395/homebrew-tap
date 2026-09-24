cask "more-corners" do
  version "0.4"
  sha256 "c7944c02ecd83b25d44639f63ae6088fbb70644c598bc139c1bdf5e93ed5ea32"

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

  uninstall quit: "com.n14395.MoreCorners"

  zap trash: [
    "~/Library/Application Support/com.n14395.MoreCorners",
    "~/Library/Application Support/MoreCorners",
    "~/Library/Caches/com.n14395.MoreCorners",
    "~/Library/HTTPStorages/com.n14395.MoreCorners",
    "~/Library/Preferences/com.n14395.MoreCorners.plist",
    "~/Library/Saved Application State/com.n14395.MoreCorners.savedState",
  ]
end
