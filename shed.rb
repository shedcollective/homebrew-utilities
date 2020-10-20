require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.4.4.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.4.4.tar.gz | shasum -a 256
  sha256 "b4d642014c43d9e84f7e7f425ba4372cad5ac6114e87f1f3902feadeb119d6e3"

  # Specify dependencies
  depends_on "php"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
