class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.4.8"
  url "https://github.com/askgitdev/askgit/archive/v0.4.8.tar.gz"
  sha256 "19a4f9f560705a21f96508889c61c74f10a860982e341d8dd9b6957fa114c81d"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/askgit"
  end
end
