require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.0.6.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.0.6.tar.gz | shasum -a 256
  sha256 "86346735ef097ed8465269db6a7fd9ab25283beb042b168bd31aaf3b197f059e"

  def install
    bin.install Dir["dist/*"]
  end
end
