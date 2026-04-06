cask "steno" do
  version "0.1.8"
  sha256 "b572b01d3e88a87a9d28ff42fa3c55e0efe65a8e5894d1305dd6d175d462e0f1"

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
