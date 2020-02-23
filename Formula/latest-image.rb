class LatestImage < Formula
    desc "latest-image is a tool for finding the latest version of an image with a given tag in a given environment."
    homepage "https://github.com/datadog/devtools/"
    version "v1-2"
  
    if OS.mac?
      url "https://binaries.ddbuild.io/devtools/pex/latest-image/latest-image-#{version}.pex", :using => :nounzip
      sha256 "b40a568d18c9ba1982ca3ba4fac6eeb56739ca837b64aca94780f8fd93b251f9"
    end
  
    def install
      system "cp", "latest-image-#{version}.pex", "latest-image"
      bin.install "latest-image"
    end
end