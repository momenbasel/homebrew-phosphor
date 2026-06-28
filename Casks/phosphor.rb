cask "phosphor" do
  version "1.0.8"
  sha256 "1ad10a1bd192c7afd70f430818835518f81f0534f55ef6f4e3281d7cbed1c35d"

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
