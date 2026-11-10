cask "roga" do
  version "0.0.2"
  sha256 "435144bfb0caca429070e8653b366f2f1d2288a53568f76ea71cf5ab78ab2031"

  url "https://github.com/tmarkovski/roga/releases/download/v#{version}/Roga-#{version}.zip",
      verified: "github.com/tmarkovski/roga/"
  name "Roga"
  desc "Native Git client for reviewing what your agents wrote"
  homepage "https://roga.sh/"

  livecheck do
    url "https://roga.sh/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Roga.app"

  zap trash: [
    "~/Library/Application Support/sh.roga.app",
    "~/Library/Caches/sh.roga.app",
    "~/Library/HTTPStorages/sh.roga.app",
    "~/Library/Preferences/sh.roga.app.plist",
    "~/Library/Saved Application State/sh.roga.app.savedState",
  ]
end
