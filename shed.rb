require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.0.11.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.0.11.tar.gz | shasum -a 256
  sha256 "54e4872d9017ae28d50349cccc1695e39ce2b55bdddb3565ea57b75e3a39908a"

  def install
    bin.install Dir["dist/*"]
  end
end
