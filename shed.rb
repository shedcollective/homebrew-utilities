require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.1.4.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.1.4.tar.gz | shasum -a 256
  sha256 "3d702999de75349b04dce786866be4121eb9d05a80e902c4297f8200c13377aa"

  def install
    bin.install Dir["dist/*"]
  end
end
