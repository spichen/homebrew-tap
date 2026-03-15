cask "rewordit" do
  version "0.2.0"
  sha256 "a427c0efe8960f0424cba6751e0adfebb2212cdbb95869dd20c4f4e1a6e1bf3b"

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
