require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.1.0.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.1.-.tar.gz | shasum -a 256
  sha256 "395408a3dc9c3db2b5c200b8722a13a60898c861633b99e6e250186adffd1370"

  def install
    bin.install Dir["dist/*"]
  end
end
