class S22Checker < Formula
    desc "s22-checker is a command line tool for determining if secrets have been added to repos."
    homepage "https://github.com/datadog/devtools/"
    version "v1-2"
  
    if OS.mac?
      url "https://binaries.ddbuild.io/devtools/pex/s22-checker/s22-checker-#{version}.pex", :using => :nounzip
      sha256 "1cfa931b3e470196669c8fdce338a8ef7d5e0a4f7b04a0d8c4782d8eafa193ac"
    end
  
    def install
      system "cp", "s22-checker-#{version}.pex", "s22-checker"
      bin.install "s22-checker"
    end
end