cask "quotamenu" do
  version "1.0.0"
  sha256 "450797f8a92bf5a5ea87a06bd0de7d6907297f2afc32c2a3e9b13c91f8c5ca28"

  url "https://github.com/iyuya1808/quotamenu-dist/releases/download/latest/QuotaMenu.dmg"
  name "QuotaMenu"
  desc "Menu bar app that displays AI usage quotas"
  homepage "https://github.com/iyuya1808/quotamenu-dist"

  depends_on macos: ">= :sonoma"

  app "QuotaMenu.app"

  zap trash: [
    "~/Library/Preferences/com.quotamenu.app.plist",
    "~/Library/Application Support/QuotaMenu",
  ]
end
