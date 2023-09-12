require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.14.1.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.14.1.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "fb9e23c1b80035bc4d09e17f2a79b0d4c3c772eea4b9dd216437e1b5ba86c72d"

  # Specify dependencies
  depends_on "php"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
