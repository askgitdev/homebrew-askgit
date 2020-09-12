class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  url "https://github.com/augmentable-dev/askgit/archive/v0.2.0.tar.gz"
  sha256 "5dd53df4eb1885cbe5aece0da9d03623de8977142337ff708ad55e8d8caff875"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
