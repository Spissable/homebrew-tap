cask "shlf" do
  version "1.4.0"
  sha256 "00b47ff254659778b73092f2e2af02e41647356250b8e941a3cdc736be0fe799"

  url "https://github.com/spissable/shlf/releases/download/v1.4.0/Shlf.app.zip"
  name "Shlf"
  desc "Tiny macOS menu bar app that keeps your folder close"
  homepage "https://github.com/spissable/shlf"

  depends_on macos: ">= :sonoma"

  app "Shlf.app"
end
