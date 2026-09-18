cask "folder-rules" do
  version "0.1"
  sha256 "f422f3eef7ed0577ca046ef804304f345286b8b8583f6aad3d81357b00db1af0"

  url "https://github.com/n14395/folder-rules/releases/download/v#{version}/FolderRules-#{version}.dmg"
  name "Folder Rules"
  desc "Rule-based folder automation: rename, move, tag, OCR and convert files"
  homepage "https://github.com/n14395/folder-rules"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "FolderRules.app"

  uninstall quit: "com.n14395.FolderRules"

  zap trash: [
    "~/Library/Containers/com.n14395.FolderRules",
    "~/Library/Containers/com.n14395.FolderRules.FinderSync",
    "~/Library/Group Containers/group.com.n14395.FolderRules",
  ]
end
