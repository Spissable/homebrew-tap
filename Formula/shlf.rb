class Shlf < Formula
  desc "Tiny macOS menu bar app that keeps your folder close"
  homepage "https://github.com/spissable/shlf"
  url "https://github.com/spissable/shlf/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "9d34c5ba850cff8640747d8ef0f0b825d9114e633d8572f2dcfca4c6a2d96cbb"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/shlf"
  end

  test do
    assert_predicate bin/"shlf", :exist?
  end
end
