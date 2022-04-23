class Mergestat < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://mergestat.com"
  version "v0.5.6"
  url "https://github.com/mergestat/mergestat.git",
    tag: "v0.5.6",
    revision: "8737396aae367b619e82601e6ec8262ab6f6c635"
  license "MIT"

  depends_on "go" => :build
  depends_on "cmake" => :build
  depends_on "make" => :build
  depends_on "openssl@3" => :build
  depends_on "pkg-config" => :build

  def install
    system "make libgit2 && make"
    bin.install ".build/mergestat"
  end
end
