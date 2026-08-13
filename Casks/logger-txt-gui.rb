cask "logger-txt-gui" do
  version "2.0.4"
  sha256 "041817b329875bcae57ca9053b52890401216bbd9585b695d372cfe9bd08aa20"

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
