cask "phosphor" do
  version "1.2.0"
  sha256 "0cc6fba5b65df6a4e1e1f02377b80ada2e654e9151265deff9a0ad87dfd9138d"

  url "https://github.com/momenbasel/Phosphor/releases/download/v#{version}/Phosphor.dmg"
  name "Phosphor"
  desc "Free and open-source iOS device manager"
  homepage "https://github.com/momenbasel/Phosphor"

  depends_on macos: :sonoma

  app "Phosphor.app"

  zap trash: [
    "~/Library/Caches/com.phosphor.app",
    "~/Library/Preferences/com.phosphor.app.plist",
  ]
end
