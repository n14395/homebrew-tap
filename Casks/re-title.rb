cask "re-title" do
  version "1.10.0"
  sha256 "55ff37a0229bb7fccf8f586d7376a40f5c50209ff3072f338d473a778e75ee03"

  url "https://github.com/n14395/re-title/releases/download/v#{version}/ReTitle-#{version}.dmg"
  name "ReTitle"
  desc "Batch file renaming with rule-based transformations and live preview"
  homepage "https://github.com/n14395/re-title"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ReTitle.app"

  uninstall quit: "com.n14395.ReTitle"

  zap trash: "~/Library/Containers/com.n14395.ReTitle"
end
