cask "steno" do
  version "0.2.14"
  sha256 "a447a25ca1ca071cd9582705bcdecabbcdb5259515b9672e2d1fb69032f150ec"

  url "https://github.com/kmg/steno/releases/download/v#{version}/Steno-v#{version}.dmg"
  name "Steno"
  desc "Local macOS meeting transcription. No cloud, no bots, no telemetry."
  homepage "https://github.com/kmg/steno"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Steno.app"

  zap trash: [
    "~/Documents/Steno",
    "~/Library/Preferences/com.kmganesh.steno.plist",
  ]
end
