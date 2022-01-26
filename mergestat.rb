class Mergestat < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://mergestat.com"
  version "v0.5.2"
  url "https://github.com/mergestat/mergestat/archive/v0.5.2.tar.gz"
  sha256 "2817bdd68e4e06d017e0c70b030f5e73a9ac77e5693bf4cc184dcff542178fad"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/mergestat"
  end
end
