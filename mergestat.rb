class Mergestat < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://mergestat.com"
  version "v0.5.1"
  url "https://github.com/mergestat/mergestat/archive/v0.5.1.tar.gz"
  sha256 "b014f9f4c1b7a14930c6357982ff246e9dda22d944c1edaf42f16968f7aac317"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/mergestat"
  end
end
