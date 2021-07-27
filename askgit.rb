class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.4.1"
  url "https://github.com/augmentable-dev/askgit/archive/v0.4.1.tar.gz"
  sha256 "86c4d9bcb7e09cab3b95c417dc3252eac0d7b718f470d4046078c6b012e70bd4"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make"
    bin.install ".build/askgit"
  end
end
