cask "mike" do
  version "1.0.0"
  sha256 "b8ef0feb01a0e5e81bc788af04c7bd462e21666fbc437494ee60de1fff625b44"

  url "https://github.com/spissable/mike/releases/download/v1.0.0/Mike.app.zip"
  name "Mike"
  desc "macOS menu bar app that enforces your preferred microphone"
  homepage "https://github.com/spissable/mike"

  depends_on macos: ">= :sonoma"

  app "Mike.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Mike.app"]
  end
end
