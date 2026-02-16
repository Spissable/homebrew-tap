cask "shlf" do
  version "1.2.2"
  sha256 "88b6018540368c3276f108268ae786d9ed441ab91752ac468af3cdb55e3615ec"

  url "https://github.com/spissable/shlf/releases/download/v#{version}/Shlf.app.zip"
  name "Shlf"
  desc "Tiny macOS menu bar app that keeps your folder close"
  homepage "https://github.com/spissable/shlf"

  depends_on macos: ">= :sonoma"

  app "Shlf.app"
end
