class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.2.1"
  url "https://github.com/augmentable-dev/askgit/archive/v0.3.0.tar.gz"
  sha256 "0dd64dfd4c422fdad2daaf1fff8d4588e6fca0db8356f6cd92cb1847bf68c732"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
