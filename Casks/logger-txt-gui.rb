cask "logger-txt-gui" do
  version "2.0.3"
  sha256 "e44fbb7f531d25381fff4aacd98cd200cca82d0bcd12f7eab66cefec62eb8c83"

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
