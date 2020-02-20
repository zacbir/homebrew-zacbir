class S22Checker < Formula
    desc "s22-checker is a command line tool for determining if secrets have been added to repos."
    homepage "https://github.com/datadog/devtools/"
    version "v1-1"
  
    if OS.mac?
      url "https://binaries.ddbuild.io/devtools/pex/s22-checker/s22-checker-#{version}.pex", :using => :nounzip
      sha256 "85ed5612d9147196cf6fce5de77c31b131e64288251b0ba7c841c7f482f8b122"
    end
  
    def install
      # Homebrew downloads the ddtool binary as `binaries.ddbuild.io`
      system "cp", "s22-checker-#{version}.pex", "s22-checker"
      bin.install "s22-checker"
    end
end