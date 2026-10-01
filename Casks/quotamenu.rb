cask "quotamenu" do
  version "1.1.1"
  sha256 "22d2b0bb7457c658504e1f6e5b76f9bb0d117798c8c663013bad8e3fca8454d4"

  url "https://github.com/iyuya1808/quotamenu-dist/releases/download/latest/QuotaMenu.dmg"
  name "QuotaMenu"
  desc "Menu bar app that displays AI usage quotas"
  homepage "https://github.com/iyuya1808/quotamenu-dist"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "QuotaMenu.app"

  zap trash: [
    "~/Library/Preferences/com.quotamenu.app.plist",
    "~/Library/Application Support/QuotaMenu",
  ]
end
