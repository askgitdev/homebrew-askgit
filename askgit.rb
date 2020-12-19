class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.3.2"
  url "https://github.com/augmentable-dev/askgit/archive/v0.3.2.tar.gz"
  sha256 "37405f3d0eefe34585fbe21ae2f5886f6e007ee8e8c42874da4edb828d6ed318"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
