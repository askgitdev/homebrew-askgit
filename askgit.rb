class AskGit < Formula
    desc "Query git repositories with SQL. Generate reports, perform status checks, analyze codebases. 🔍 📊"
    homepage "https://askgit.com"
    license "MIT"
    version "0.1.0"
    bottle :unneeded
  
    if OS.mac?
        url "https://github.com/augmentable-dev/askgit/releases/download/v0.1.0/askgit-darwin-10.6-386.tar.gz"
        sha256 "c235337992dc20d2396053731aeaf6b5f51b1cc4286e97a8da324adc826ccf2745eb414142d397bd49a47455dd8e58550a45aa2ba8ce195a1e0b0f686f29b32c"
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/augmentable-dev/askgit/releases/download/v0.1.0/askgit-linux-386.tar.gz"
        sha256 "4bbc546db98ef6e77dc435898cebb15ac68676d94399944d073d8b2d9ce6dc798f97821d778d49cdb43d2143431eaf3611e617a6f3c36006803e972d61b6f8e1"
      end

      if Hardware::CPU.amd?
        url "https://github.com/augmentable-dev/askgit/releases/download/v0.1.0/askgit-linux-amd64.tar.gz"
        sha256 "67308976d62e8b80d99a9172b2ada56ffed9b4e620baac121220bf8c51aadc200f22b8fb4225170a88defdd7f46d312644cb166a306df6ab773199d8bd15de1b"
      end
    end
  
    def install
      bin.install "askgit"
    end
end
  