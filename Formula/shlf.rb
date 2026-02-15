class Shlf < Formula
  desc "Tiny macOS menu bar app that keeps your folder close"
  homepage "https://github.com/spissable/shlf"
  url "https://github.com/spissable/shlf/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "0ced9cb721fda2c1a5ebea7d8cc020ffdc8c2e12964ba78d42f0011d2f4ca4a9"
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
