cask "rewordit" do
  version "0.1.1"
  sha256 "171a8ef980a6b817d7b49b368810c41a89d536dc3fe2a0a652a2f5dd352bd348"

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
