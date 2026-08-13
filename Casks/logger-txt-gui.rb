cask "logger-txt-gui" do
  version "2.0.5"
  sha256 "b68e64768679c97031eed213f5437a30481157ae60bc79effce70d36e93a8e62"

  url "https://github.com/grantlucas/Logger-TXT-macOS/releases/download/v#{version}/Logger-TXT-#{version}-macos.zip"
  name "Logger-TXT"
  desc "macOS menu bar app for quick timestamped logging"
  homepage "https://github.com/grantlucas/Logger-TXT-macOS"

  depends_on macos: :sonoma

  app "Logger-TXT.app"

  zap trash: [
    "~/Documents/Logger-TXT",
    "~/Library/Preferences/com.logger-txt.app.plist",
  ]
end
