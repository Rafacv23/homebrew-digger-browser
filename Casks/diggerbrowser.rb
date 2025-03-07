cask "digger-browser" do
  version "0.0.1"
  sha256 "b3932dd7415eab64da4e9c5fbd9f435601d4f607c1dcbdd56d05ff0876ab88fa"

  url "https://github.com/Rafacv23/digger-browser-desktop/releases/download/v0.0.1-alpha/digger-browser_0.1.0_aarch64.dmg"
  name "Digger Browser"
  desc "The next generation browser that reads internet to summarizes them for you."
  homepage "https://github.com/Rafacv23/digger-browser-desktop"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "DiggerBrowser.app"

  zap trash: [
    "~/Library/Application Support/DiggerBrowser",
    "~/Library/Preferences/com.diggerbrowser.plist",
  ]
end
