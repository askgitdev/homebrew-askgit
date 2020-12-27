class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.3.3"
  url "https://github.com/augmentable-dev/askgit/archive/v0.3.3.tar.gz"
  sha256 "1d562e38b9f5353c29a930044b025d49ecbab7262e655ad5ab647df3a633b8bf"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
