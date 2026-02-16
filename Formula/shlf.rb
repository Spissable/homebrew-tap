class Shlf < Formula
  desc "Tiny macOS menu bar app that keeps your folder close"
  homepage "https://github.com/spissable/shlf"
  url "https://github.com/spissable/shlf/releases/download/v1.3.0/shlf-macos.tar.gz"
  sha256 "a074f0bc3186e2bb046865358f4f93eb86650e43cf2814afb8fd445acd9e9be7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "shlf"
  end

  test do
    assert_predicate bin/"shlf", :exist?
  end
end
