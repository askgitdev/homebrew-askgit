class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.4.4"
  url "https://github.com/augmentable-dev/askgit/archive/v0.4.4.tar.gz"
  sha256 "a4fb6f1232582fb59514a163731d17db7d83b0d0a52a0b7617b0402891a7e0c6"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/askgit"
  end
end
