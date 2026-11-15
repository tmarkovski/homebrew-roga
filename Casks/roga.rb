cask "roga" do
  version "0.0.5"
  sha256 "d6246c8ac3b6c8005327538ca5c21c5a3aab0d1317fb6ad7beaa72012f56d93b"

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
