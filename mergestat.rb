class Mergestat < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://mergestat.com"
  version "v0.4.9"
  url "https://github.com/mergestat/mergestat/archive/v0.4.9.tar.gz"
  sha256 "658d4792013361c287abf66aa28fe0422edeae0cf8d333c7b00afd8c6bba2963"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/mergestat"
  end
end
