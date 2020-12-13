class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.3.1"
  url "https://github.com/augmentable-dev/askgit/archive/v0.3.1.tar.gz"
  sha256 "89892698e0cb14d6cca2b68d16164f9a97f5540d3b5fd88fcd4ccaacd52825ae"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
