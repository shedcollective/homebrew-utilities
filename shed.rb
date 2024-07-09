require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.14.5.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.14.5.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "4829820dcc2982cb801f5322f0b703f495c6d9c64850cb5a5a9c1118f9e36ac3"

  # Specify dependencies
  depends_on "php"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
