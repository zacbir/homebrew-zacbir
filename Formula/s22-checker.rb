class S22Checker < Formula
    desc "s22-checker is a command line tool for determining if secrets have been added to repos."
    homepage "https://github.com/datadog/devtools/"
    version "new-unversioned"
  
    if OS.mac?
      url "https://binaries.ddbuild.io/devtools/pex/s22-checker/s22-checker-#{version}.pex", :using => :nounzip
      sha256 "451f18ca7ebc66388af0b370bfbe2fce0baa01cf337df46fbcb0422c850e101a"
    end
  
    def install
      # Homebrew downloads the ddtool binary as `binaries.ddbuild.io`
      system "cp", "s22-checker-#{version}.pex", "s22-checker"
      bin.install "s22-checker"
    end
end