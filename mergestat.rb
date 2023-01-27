class Mergestat < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://mergestat.com"
  version "v0.6.0"
  url "https://github.com/mergestat/mergestat-lite.git",
    tag: "v0.6.0",
    revision: "229870e33edd7dff2dcfcdbcdb68f45e2784f8a8"
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
