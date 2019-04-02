require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.1.3.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.1.3.tar.gz | shasum -a 256
  sha256 "e89f183e799998d71b700b23dc26e4161b1e22826078918639d5547caa3d52ab"

  def install
    bin.install Dir["dist/*"]
  end
end
