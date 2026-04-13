cask "phosphor" do
  version "1.0"
  sha256 "8857fd3b78b035254d7f854b48951c31b1509b7018eea454ce6264e2f804fd0a"

  url "https://github.com/momenbasel/Phosphor/releases/download/v#{version}/Phosphor.dmg"
  name "Phosphor"
  desc "Free and open-source iOS device manager for macOS"
  homepage "https://github.com/momenbasel/Phosphor"

  depends_on macos: ">= :sonoma"

  app "Phosphor.app"

  zap trash: [
    "~/Library/Caches/com.phosphor.app",
    "~/Library/Preferences/com.phosphor.app.plist",
  ]
end
