require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.1.0.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.1.0.tar.gz | shasum -a 256
  sha256 "6ccdd35c5569ea9a57cf243a98abd0ddefcea2238b0974b9964676c2aad5cbe1"

  def install
    bin.install Dir["dist/*"]
  end
end
