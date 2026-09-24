cask "re-title" do
  version "1.11"
  sha256 "8dfa0ded502953a094099c3b0decd949775e3606030d3167369e8adb5e32fb3c"

  url "https://github.com/n14395/re-title/releases/download/v#{version}/ReTitle-#{version}.dmg"
  name "ReTitle"
  desc "Batch file renaming with rule-based transformations and live preview"
  homepage "https://github.com/n14395/re-title"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ReTitle.app"

  uninstall quit: "com.n14395.ReTitle"

  zap trash: "~/Library/Containers/com.n14395.ReTitle"
end
