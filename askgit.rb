class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  version "v0.3.7"
  url "https://github.com/augmentable-dev/askgit/archive/v0.3.7.tar.gz"
  sha256 "fdc0adc6bee9ddbdc0080658fed22b64ce17418a6fddd71301301ddf53544b08"
  license "MIT"

  depends_on "go" => :build
  depends_on "libgit2" => :build

  def install
    system "make", "build"
    bin.install "askgit"
  end
end
