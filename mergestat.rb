class Mergestat < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://mergestat.com"
  version "v0.5.8"
  url "https://github.com/mergestat/mergestat-lite.git",
    tag: "v0.5.8",
    revision: "ee2c34250adada3ceae771177788f7f7439c64e3"
  license "MIT"

  depends_on "go" => :build
  depends_on "cmake" => :build
  depends_on "make" => :build
  depends_on "openssl@3" => :build
  depends_on "pkg-config" => :build

  def install
    system "make libgit2 && make"
    bin.install ".build/mergestat"
  end
end
