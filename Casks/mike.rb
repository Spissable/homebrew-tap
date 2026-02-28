cask "mike" do
  version "1.0.0"
  sha256 "placeholder"

  url "https://github.com/spissable/mike/releases/download/v#{version}/Mike.app.zip"
  name "Mike"
  desc "macOS menu bar app that enforces your preferred microphone"
  homepage "https://github.com/spissable/mike"

  depends_on macos: ">= :sonoma"

  app "Mike.app"
end
