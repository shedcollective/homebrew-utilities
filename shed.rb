require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.0.3.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.0.3.tar.gz | shasum -a 256
  sha256 "1affc8833c862127739cad8080a245a515463554453cceb893e376f2607be38e"

  def install
    bin.install Dir["dist/*"]
  end
end
