cask "logger-txt-gui" do
  version "2.0.2"
  sha256 "1254bc40dded8a8781a104050dd18d434ea60986011314b50741556c9a0cd78f"

  url "https://github.com/grantlucas/Logger-TXT-OSX-Rewrite/releases/download/v#{version}/Logger-TXT-#{version}-macos.zip"
  name "Logger-TXT"
  desc "macOS menu bar app for quick timestamped logging"
  homepage "https://github.com/grantlucas/Logger-TXT-OSX-Rewrite"

  depends_on macos: ">= :sonoma"

  app "Logger-TXT.app"

  zap trash: [
    "~/Documents/Logger-TXT",
    "~/Library/Preferences/com.logger-txt.app.plist",
  ]
end
