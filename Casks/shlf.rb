cask "shlf" do
  version "1.4.1"
  sha256 "a1dee0ccefd3ea693182e8644685ba030041c97edb1cfa1fc06db39020920b14"

  url "https://github.com/spissable/shlf/releases/download/v1.4.1/Shlf.app.zip"
  name "Shlf"
  desc "Tiny macOS menu bar app that keeps your folder close"
  homepage "https://github.com/spissable/shlf"

  depends_on macos: ">= :sonoma"

  app "Shlf.app"
end
