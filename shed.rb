require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.2.2.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.2.2.tar.gz | shasum -a 256
  sha256 "a141bcb7f8c70093d3e20468c0148f71706c1473c87cde174abf917de8166f50"

  # Specify dependencies
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
