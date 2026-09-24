cask "local-music-gen" do
  version "1.1"
  sha256 "491562ed4059a4e25d74550d39fab2c05ccb4a62e1b0864dd91368ee6af6b006"

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

  uninstall quit: "com.n14395.local-music-gen"

  zap trash: [
    "~/Library/Application Support/com.n14395.local-music-gen",
    "~/Library/Application Support/LocalMusicGen",
    "~/Library/Caches/com.n14395.local-music-gen",
    "~/Library/HTTPStorages/com.n14395.local-music-gen",
    "~/Library/Preferences/com.n14395.local-music-gen.plist",
    "~/Library/Saved Application State/com.n14395.local-music-gen.savedState",
  ]
end
