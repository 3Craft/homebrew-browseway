# Homebrew Cask formula for Browseway
# Tap repo: https://github.com/3Craft/homebrew-browseway
#
# To calculate SHA-256 after building a release DMG:
#   shasum -a 256 Browseway.dmg
# Or use: make cask-sha

cask "browseway" do
  version "1.3.4"
  sha256 "6d88282b0bb26cb5681a53e59f3f128d97cffae05b141482efb785a0eba68412"

  url "https://github.com/3Craft/browseway.app/releases/download/v#{version}/Browseway.dmg"
  name "Browseway"
  desc "Rule-based browser switching - routes URLs to different browsers automatically"
  homepage "https://browseway.app"

  livecheck do
    url "https://github.com/3Craft/browseway.app/releases.atom"
    strategy :github_latest
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sonoma"

  app "Browseway.app"

  zap trash: [
    "~/Library/Preferences/work.boing.Browseway.plist",
  ]
end
