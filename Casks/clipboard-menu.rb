cask "clipboard-menu" do
  version "1.12"
  sha256 "eaec34a24374ea156837add12a2de1bfcf773fea95d2659931363c98085384fc"

  url "https://github.com/n14395/clipboard-menu/releases/download/v#{version}/ClipboardMenu-#{version}.dmg"
  name "ClipboardMenu"
  desc "Menu bar clipboard history and snippets manager"
  homepage "https://github.com/n14395/clipboard-menu"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ClipboardMenu.app"

  uninstall quit: "com.n14395.clipboardMenu"

  zap trash: "~/Library/Containers/com.n14395.clipboardMenu"
end
