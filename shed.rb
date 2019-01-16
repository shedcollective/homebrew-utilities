require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.0.4.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.0.4.tar.gz | shasum -a 256
  sha256 "06a1707efe7d7760b574bc9505137befbb48721fdb6cbf1f1143b2795735e4b8"

  def install
    bin.install Dir["dist/*"]
  end
end
