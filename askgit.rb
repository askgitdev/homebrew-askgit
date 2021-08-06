class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.4.3"
  url "https://github.com/augmentable-dev/askgit/archive/v0.4.3.tar.gz"
  sha256 "d3ebb5830cf96a838370d4e868bc95ece03160c73c675157730c73151ecef1df"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/askgit"
  end
end
