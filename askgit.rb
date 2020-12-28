class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.3.5"
  url "https://github.com/augmentable-dev/askgit/archive/v0.3.5.tar.gz"
  sha256 "79750e80a82a9873c3ed10d190a9209acce5b3b2a940734d3e030fb0c5d01b59"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
