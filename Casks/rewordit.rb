cask "rewordit" do
  version "1.0.0"
  sha256 "5bcf2f9035583e83caab946e602768b59caae3b2e135be698feae801231c121d"

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
