class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.4.7"
  url "https://github.com/askgitdev/askgit/archive/v0.4.7.tar.gz"
  sha256 "c4e2620ccf3f6913498b1bb9317a851b1eaa363f60f71095a156217e54bf4e31"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/askgit"
  end
end
