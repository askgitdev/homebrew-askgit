class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.3.7"
  url "https://github.com/augmentable-dev/askgit/archive/v0.4.0.tar.gz"
  sha256 "f3fffdd1b6cdcd77d6c55360f915061f7367d86a5b329f99ad8d59fa325f7113"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".builld/askgit"
  end
end
