require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.0.8.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.0.8.tar.gz | shasum -a 256
  sha256 "08ce2a4475f496ad70eb35a8ecf4abc76638329183c9ae4292d523141231dbd7"

  def install
    bin.install Dir["dist/*"]
  end
end
