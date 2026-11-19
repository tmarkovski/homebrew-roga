cask "roga" do
  version "0.0.7"
  sha256 "c30c93dbb095afd495845fed614206ee99f836ff78f3e1f4703284b1a112d354"

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
