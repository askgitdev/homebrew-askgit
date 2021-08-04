class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.4.2"
  url "https://github.com/augmentable-dev/askgit/archive/v0.4.2.tar.gz"
  sha256 "a4b8d44d6ea4571402443049145af2a6e1462c2da5438926d7484287a3c0f182"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/askgit"
  end
end
