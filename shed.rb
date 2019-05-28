require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.2.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.2.1.tar.gz | shasum -a 256
  sha256 "d4f2698b345cf53d6d1bb9308120f135dcbed72d92164972cde6068d2d3fa929"

  # Specify dependencies
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
