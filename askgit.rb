class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.4.6"
  url "https://github.com/augmentable-dev/askgit/archive/v0.4.6.tar.gz"
  sha256 "e1298736cd4c6f92b7cdaf752044d2baaa212b160d653409096ed14ba0104d63"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/askgit"
  end
end
