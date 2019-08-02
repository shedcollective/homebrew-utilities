require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.3.2.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.3.2.tar.gz | shasum -a 256
  sha256 "66c6447d19d347c3172330726843926f84e8202e9693bb6bee00b7d28227fee5"

  # Specify dependencies
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
