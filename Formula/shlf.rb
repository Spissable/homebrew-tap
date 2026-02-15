class Shlf < Formula
  desc "Tiny macOS menu bar app that keeps your folder close"
  homepage "https://github.com/spissable/shlf"
  url "https://github.com/spissable/shlf/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "88b6018540368c3276f108268ae786d9ed441ab91752ac468af3cdb55e3615ec"
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
