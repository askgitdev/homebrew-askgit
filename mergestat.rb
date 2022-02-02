class Mergestat < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://mergestat.com"
  version "v0.5.3"
  url "https://github.com/mergestat/mergestat/archive/v0.5.3.tar.gz"
  sha256 "a37a6fb278db1c05478e07737ce9d8a12fe6866375da8286fe979e61ca9ad23a"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/mergestat"
  end
end
