require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.1.5.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.1.5.tar.gz | shasum -a 256
  sha256 "703d6dcf1d66cedd49083ede20616fcd091e371ff8133a20e573222c791210fe"

  def install
    bin.install Dir["dist/*"]
  end
end
