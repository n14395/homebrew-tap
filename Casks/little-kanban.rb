cask "little-kanban" do
  version "1.1"
  sha256 "3b352df3e9edbc37104658c04e05f677a2b5364ecd76decef2a835ad701bab0f"

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
