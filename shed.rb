require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.2.6.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.2.6.tar.gz | shasum -a 256
  sha256 "2eff32ef13f0b903f1be0cb56ed678c57ba04f23c18bf5babe62865383c29d97"

  # Specify dependencies
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
