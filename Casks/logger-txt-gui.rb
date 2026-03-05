cask "logger-txt-gui" do
  version "2.0.0"
  sha256 "bf6d8e93b55d07c82e7f0c54703a749a0873440d9fa01fbbb83b3a2b92fdb357"

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
