class Mergestat < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://mergestat.com"
  version "v0.5.0"
  url "https://github.com/mergestat/mergestat/archive/v0.5.0.tar.gz"
  sha256 "0d4ba6a9583487fcee1baa3d13f1cf260991fc62df8a8a011d97ad949f9a026c"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/mergestat"
  end
end
