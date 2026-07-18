cask "phosphor" do
  version "1.1.0"
  sha256 "d27aeb32bb434d7e03705c7a703b53186afd8b03804253831fcec3ef2cc8dd9c"

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
