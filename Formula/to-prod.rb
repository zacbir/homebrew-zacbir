class ToProd < Formula
    desc "to-prod deploys a particular branch or tag to production environments"
    homepage "https://github.com/datadog/devtools/"
    version "unversioned"
  
    if OS.mac?
      url "https://binaries.ddbuild.io/devtools/pex/to-prod/to-prod-#{version}.pex", :using => :nounzip
      sha256 "3d597e7c3c7a53d28eebe60870b24fc148a24cc42f8dab9375333daa35f17e16"
    end
  
    def install
      # Homebrew downloads the ddtool binary as `binaries.ddbuild.io`
      system "cp", "to-prod-#{version}.pex", "to-prod"
      bin.install "to-prod"
    end
end