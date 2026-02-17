cask "shlf" do
  version "1.4.2"
  sha256 "ec247728da45b8e9c4f4dd1a716a9b739cc74936c2993a0cfe374bb255832a2c"

  url "https://github.com/spissable/shlf/releases/download/v1.4.2/Shlf.app.zip"
  name "Shlf"
  desc "Tiny macOS menu bar app that keeps your folder close"
  homepage "https://github.com/spissable/shlf"

  depends_on macos: ">= :sonoma"

  app "Shlf.app"
end
