cask "logger-txt-gui" do
  version "2.0.1"
  sha256 "bc999c7fd2d9b9a9bea025db733ad992a739505c7e275c429efb55ee4044057d"

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
