cask "local-music-gen" do
  version "1.2"
  sha256 "480b4430bd51127723d171c292a6fb0b747d2c7eeec8d72641211512b0429b60"

  url "https://github.com/n14395/local-music-gen/releases/download/v#{version}/LocalMusicGen-#{version}.dmg"
  name "LocalMusicGen"
  desc "Run open music-AI models locally to generate, separate, transcribe and restyle"
  homepage "https://github.com/n14395/local-music-gen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "LocalMusicGen.app"

  uninstall quit: "com.n14395.LocalMusicGen"

  zap trash: [
    "~/Library/Application Support/com.n14395.LocalMusicGen",
    "~/Library/Application Support/LocalMusicGen",
    "~/Library/Caches/com.n14395.LocalMusicGen",
    "~/Library/HTTPStorages/com.n14395.LocalMusicGen",
    "~/Library/Preferences/com.n14395.LocalMusicGen.plist",
    "~/Library/Saved Application State/com.n14395.LocalMusicGen.savedState",
  ]
end
