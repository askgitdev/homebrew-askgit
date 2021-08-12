class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.4.5"
  url "https://github.com/augmentable-dev/askgit/archive/v0.4.5.tar.gz"
  sha256 "4e7cb8c97c669ea896f89e806d6884ae046b9b67e0474a476ca8502327c67ee0"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/askgit"
  end
end
