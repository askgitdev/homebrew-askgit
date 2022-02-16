class Mergestat < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://mergestat.com"
  version "v0.5.4"
  url "https://github.com/mergestat/mergestat/archive/v0.5.4.tar.gz"
  sha256 "0d545c0d1918be642cf2220b7115a52a43d3e7771ff1d4afdd1d37f7805c37a0"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/mergestat"
  end
end
