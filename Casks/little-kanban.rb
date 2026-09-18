cask "little-kanban" do
  version "1.0"
  sha256 "cc48cf4b13edec0286b39aa6642cec5774df190d7276fe67a436dd2d3826c02d"

  url "https://github.com/n14395/little-kanban/releases/download/v#{version}/LittleKanban-#{version}.dmg"
  name "Little Kanban"
  desc "Multi-board Kanban with a single global inbox"
  homepage "https://github.com/n14395/little-kanban"

  livecheck do
    url :url
    strategy :github_latest
  end

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
