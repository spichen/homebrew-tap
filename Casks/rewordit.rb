cask "rewordit" do
  version "0.1.0-beta1"
  sha256 "e392e6f83fbff030f8357dd6669ecf996bbe9d5690e4a7dbcea5d80e3963b14c"

  url "https://github.com/spichen/rewordit/releases/download/v#{version}/RewordIt-#{version}.dmg"
  name "RewordIt"
  desc "macOS menu bar utility that rewords selected text using LLMs"
  homepage "https://github.com/spichen/rewordit"

  depends_on macos: ">= :ventura"

  app "RewordIt.app"

  zap trash: [
    "~/Library/Preferences/com.rewordit.RewordIt.plist",
  ]
end
