class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "0.2.1"
  url "https://github.com/augmentable-dev/askgit/archive/v0.2.1.tar.gz"
  sha256 "8d93d583a7c5ca9f2fc48455290398d5d1fc93c02cfd4af2e6ff8e5a88983385"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
