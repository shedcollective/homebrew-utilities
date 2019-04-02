require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.1.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.1.1.tar.gz | shasum -a 256
  sha256 "3f52cfbe42d4b6a1059dfaa9d43460fcd6807f791b6ff84e3857e36d688daf3d"

  def install
    bin.install Dir["dist/*"]
  end
end
