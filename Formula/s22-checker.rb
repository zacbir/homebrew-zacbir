class S22checker < Formula
    desc "s22-checker is a command line tool for determining if secrets have been added to repos."
    homepage "https://github.com/datadog/devtools/"
    version "unversioned"
  
    if OS.mac?
      url "https://binaries.ddbuild.io/devtools/pex/s22-checker/s22-checker-#{version}.pex", :using => :nounzip
      sha256 "8866665bd96c6ecb4f2c5ee03738aa6e0962ef6d348feaeeb7403828051fb2bc"
    end
  
    def install
      # Homebrew downloads the ddtool binary as `binaries.ddbuild.io`
      system "cp", "binaries.ddbuild.io", "s22-checker"
      bin.install "s22-checker"
    end
  end
  