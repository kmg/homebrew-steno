cask "steno" do
  version "0.2.23"
  sha256 "d993597ee3daa577dabddf0419150f1c615c149f53d8adc6f5a1f86c77cb2f72"

  url "https://github.com/kmg/steno/releases/download/v#{version}/Steno-v#{version}.dmg"
  name "Steno"
  desc "Local macOS meeting transcription. No cloud, no bots, no telemetry."
  homepage "https://github.com/kmg/steno"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Steno.app"

  zap trash: [
    "~/Documents/Steno",
    "~/Library/Preferences/com.kmganesh.steno.plist",
  ]
end
