class Askgit < Formula
    desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
    homepage "https://askgit.com"
    license "MIT"
    version "0.1.0"
    bottle :unneeded
  
    if OS.mac?
        url "https://github.com/augmentable-dev/askgit/releases/download/v0.1.0/askgit-darwin-10.6-386.tar.gz"
        sha256 "a0a8b141acd396f345fdcaa7c0dd818c78a74108ef55287eb9250f78bf69df6b"
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/augmentable-dev/askgit/releases/download/v0.1.0/askgit-linux-386.tar.gz"
        sha256 "256f84a7166d6cb367c1bb71594699eff67dee75a62b1976356bbd490aff9781"
      end

      if Hardware::CPU.amd?
        url "https://github.com/augmentable-dev/askgit/releases/download/v0.1.0/askgit-linux-amd64.tar.gz"
        sha256 "9bf1fd79c21dd228324b8a81e76874901a2ffaf2ced49eb4355cac8abce68dd9"
      end
    end
  
    def install
      bin.install "askgit"
    end
end
  