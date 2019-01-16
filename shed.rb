require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.0.7.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.0.7.tar.gz | shasum -a 256
  sha256 "0a4133a3f7faee50285562a8533e194564033d7fb1d7dfc7ef40aa5185e92e83"

  def install
    bin.install Dir["dist/*"]
  end
end
