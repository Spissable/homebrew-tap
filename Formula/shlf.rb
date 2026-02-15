class Shlf < Formula
  desc "Tiny macOS menu bar app that keeps your folder close"
  homepage "https://github.com/spissable/shlf"
  url "https://github.com/spissable/shlf/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "8626e2b9cfa08ab8405cd45fad8626c9127d64b1ecc05db4f9e34eb9cdd8c0c3"
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
