class LatestImage < Formula
    desc "latest-image is a tool for finding the latest version of an image with a given tag in a given environment."
    homepage "https://github.com/datadog/devtools/"
    version "unversioned"
  
    if OS.mac?
      url "https://binaries.ddbuild.io/devtools/pex/latest-image/latest-image-#{version}.pex", :using => :nounzip
      sha256 "373a483ddc13faf864b9ac11b3ec1e0ff4282837edde4512d004682b8bee7769"
    end
  
    def install
      # Homebrew downloads the ddtool binary as `binaries.ddbuild.io`
      system "cp", "latest-image-#{version}.pex", "latest-image"
      bin.install "latest-image"
    end
  end