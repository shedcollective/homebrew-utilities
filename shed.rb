require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.2.3.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.2.3.tar.gz | shasum -a 256
  sha256 "0fd8073d5766a4c1b3464fcba20e9840b16441ecc27cf306a5248250ff2ae459"

  # Specify dependencies
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
