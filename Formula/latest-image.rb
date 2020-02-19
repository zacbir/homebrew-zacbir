class LatestImage < Formula
    desc "latest-image is a tool for finding the latest version of an image with a given tag in a given environment."
    homepage "https://github.com/datadog/devtools/"
    version "unversioned"
  
    if OS.mac?
      url "https://binaries.ddbuild.io/devtools/pex/latest-image/latest-image-#{version}.pex", :using => :nounzip
      sha256 "8866665bd96c6ecb4f2c5ee03738aa6e0962ef6d348feaeeb7403828051fb2bc"
    end
  
    def install
      # Homebrew downloads the ddtool binary as `binaries.ddbuild.io`
      system "cp", "latest-image-#{version}.pex", "latest-imageb"
      bin.install "latest-image"
    end
  end