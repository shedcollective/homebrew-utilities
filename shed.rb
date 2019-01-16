require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.0.5.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.0.5.tar.gz | shasum -a 256
  sha256 "10dc584a6617d63a7812c99e4b28f9dca97c141015f876cdc5a409fc0414e75d"

  def install
    bin.install Dir["dist/*"]
  end
end
