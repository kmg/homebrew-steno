cask "steno" do
  version "0.2.2"
  sha256 "801a9189fda9639eba99a84cda32b5fd18f70333bfbffea31a2795d92360a92c"

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
