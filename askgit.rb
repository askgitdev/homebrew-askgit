class Askgit < Formula
  desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
  homepage "https://askgit.com"
  license "MIT"
  version "v0.1.0"
  bottle :unneeded

  if OS.mac?
    if Hardware::CPU.is_64_bit?
      @@file = "askgit-darwin-10.6-amd64"
      sha256 "620d56c59a8c440afcdf191bfed4dee6647cdad59dbf2d992c7a8e3e6ec829b8"
    else
      @@file = "askgit-darwin-10.6-386"
      sha256 "a0a8b141acd396f345fdcaa7c0dd818c78a74108ef55287eb9250f78bf69df6b"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        @@file = "askgit-linux-amd64"
        sha256 "9bf1fd79c21dd228324b8a81e76874901a2ffaf2ced49eb4355cac8abce68dd9"
      else
        @@file = "askgit-linux-386"
        sha256 "256f84a7166d6cb367c1bb71594699eff67dee75a62b1976356bbd490aff9781"
      end
    end
  end

  url "https://github.com/augmentable-dev/askgit/releases/download/#{version}/#{@@file}.tar.gz"

  def install
    bin.install @@file => "askgit"
  end
end
