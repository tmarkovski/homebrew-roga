cask "roga" do
  version "0.0.1"
  sha256 "13a6b2f0400ff653d6449e053b94ea1469fb8b722199a2f99c12d98924a19d9a"

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
