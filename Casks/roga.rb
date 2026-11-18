cask "roga" do
  version "0.0.6"
  sha256 "4726c8b302f8a117be03bee592585c9a2924754df44f00ec31cc4c1ef70867b4"

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
