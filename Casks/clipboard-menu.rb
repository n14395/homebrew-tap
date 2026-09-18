cask "clipboard-menu" do
  version "1.11.0"
  sha256 "927351df037dfdbbf74cd7aad4a697b5d3097fdb78a2103c5ee57084f78ffe02"

  url "https://github.com/n14395/clipboard-menu/releases/download/v#{version}/ClipboardMenu-#{version}.dmg"
  name "ClipboardMenu"
  desc "Menu bar clipboard history and snippets manager"
  homepage "https://github.com/n14395/clipboard-menu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ClipboardMenu.app"

  uninstall quit: "com.n14395.clipboardMenu"

  zap trash: "~/Library/Containers/com.n14395.clipboardMenu"
end
