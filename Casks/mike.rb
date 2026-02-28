cask "mike" do
  version "1.0.1"
  sha256 "fa165d844b1c84ed2068370807e6db598f0a197208c9a0a3c44fd6b2816f93fb"

  url "https://github.com/spissable/mike/releases/download/v1.0.1/Mike.app.zip"
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
