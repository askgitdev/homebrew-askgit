class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.3.4"
  url "https://github.com/augmentable-dev/askgit/archive/v0.3.4.tar.gz"
  sha256 "d8b4c73fe09c24ee96c478aca76f3aeb664f9b81c6c7c1e5127074fd0fa13dc1"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
