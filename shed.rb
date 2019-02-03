require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.0.10.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.0.10.tar.gz | shasum -a 256
  sha256 "1693c7dd3c3d9480c5349590a7138e03301882d4a2456fb1560e48f4034c598e"

  def install
    bin.install Dir["dist/*"]
  end
end
