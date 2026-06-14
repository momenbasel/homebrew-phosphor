cask "phosphor" do
  version "1.0.7"
  sha256 "e8d756f597a1be1e203cfd76acea33057775393b2366b82aca9623a857072457"

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
