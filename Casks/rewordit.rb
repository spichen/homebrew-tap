cask "rewordit" do
  version "0.3.0"
  sha256 "a8942603c6d67f8ad756e53090a8139e6f774a5228b2b2dba359ce4c1c96fff2"

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
