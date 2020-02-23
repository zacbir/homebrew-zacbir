class ToProd < Formula
    desc "to-prod deploys a particular branch or tag to production environments"
    homepage "https://github.com/datadog/devtools/"
    version "v1-2"
  
    if OS.mac?
      url "https://binaries.ddbuild.io/devtools/pex/to-prod/to-prod-#{version}.pex", :using => :nounzip
      sha256 "b7d89a5d9cc0730f28e615202dd09d688999bb63966ebd92fb93878046b86eed"
    end
  
    def install
      system "cp", "to-prod-#{version}.pex", "to-prod"
      bin.install "to-prod"
    end
end