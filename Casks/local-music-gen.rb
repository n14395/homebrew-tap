cask "local-music-gen" do
  version "1.0"
  sha256 "e5a530d8249ea52e7f1ff0984eb96ca31037e8dd78f5a9aae6fb769aacf6c90c"

  url "https://github.com/n14395/local-music-gen/releases/download/v#{version}/LocalMusicGen-#{version}.dmg"
  name "LocalMusicGen"
  desc "Run open music-AI models locally to generate, separate, transcribe and restyle"
  homepage "https://github.com/n14395/local-music-gen"

  livecheck do
    url :url
    strategy :github_latest
  end

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
