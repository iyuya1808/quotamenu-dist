cask "quotamenu" do
  version "1.1.0"
  sha256 "cc194e047d5f9a6fe042ccc3663749cb22dfd5554aaa02dffa329d0fa1ecaf86"

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
