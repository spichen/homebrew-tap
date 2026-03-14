cask "rewordit" do
  version "0.1.0"
  sha256 "4abb9fa9fa8dbd72736959fae7d10f972f9f3e68b55768e441d5cd71a1192eee"

  url "https://pub-4b86e3f39bea468fa3fb2854fe2c7bab.r2.dev/RewordIt-#{version}.dmg"
  name "RewordIt"
  desc "macOS menu bar utility that rewords selected text using LLMs"
  homepage "https://github.com/spichen/rewordit"

  depends_on macos: ">= :ventura"

  app "RewordIt.app"

  zap trash: [
    "~/Library/Preferences/com.rewordit.RewordIt.plist",
  ]
end
