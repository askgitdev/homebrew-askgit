class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.3.6"
  url "https://github.com/augmentable-dev/askgit/archive/v0.3.6.tar.gz"
  sha256 "36b04d02593031bc24e2453634a62f8ebc6c946e74274ad921794d16362b5937"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
