cask "little-kanban" do
  version "1.2"
  sha256 "335f1400631047eb41d5c9d79202f0bec6e8d1ce8c3abba19ad7a2519ffb924e"

  url "https://github.com/n14395/little-kanban/releases/download/v#{version}/LittleKanban-#{version}.dmg"
  name "Little Kanban"
  desc "Multi-board Kanban with a single global inbox"
  homepage "https://github.com/n14395/little-kanban"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "LittleKanban.app"

  uninstall quit: "com.n14395.LittleKanban"

  zap trash: [
    "~/Library/Containers/com.n14395.LittleKanban",
    "~/Library/Containers/com.n14395.LittleKanban.Share",
    "~/Library/Containers/com.n14395.LittleKanban.Widgets",
    "~/Library/Group Containers/P52946XHRJ.group.com.n14395.LittleKanban",
  ]
end
