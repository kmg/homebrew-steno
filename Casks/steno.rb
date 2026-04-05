cask "steno" do
  version "0.1.3"
  sha256 "421f5eb5fe1f5bafa614aeb213013cd0639be06112004813e5004cba9656bc8d"

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
