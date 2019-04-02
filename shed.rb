require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.1.2.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.1.2.tar.gz | shasum -a 256
  sha256 "61a9454fa048971c28eea7cea2f75939f32e4c3e0db249d92ca118809db99b28"

  def install
    bin.install Dir["dist/*"]
  end
end
