cask "jettison" do
  version "1.9.1"
  sha256 "41b56de7b452ed8c92ca9e7532d652fbbcb5e8fd562fec3348c7fefc6844cece"

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  name "Jettison"
  name "St. Clair Software Jettison"
  desc "Automatically ejects external drives"
  homepage "https://stclairsoft.com/Jettison/"

  livecheck do
    url "https://stclairsoft.com/cgi-bin/sparkle.cgi?JT"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Jettison.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl*",
    "~/Library/Application Support/Jettison",
    "~/Library/Caches/com.stclairsoft.Jettison",
    "~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist",
    "~/Library/Preferences/com.stclairsoft.Jettison.plist",
  ]
end
