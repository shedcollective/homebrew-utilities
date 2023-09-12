require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.14.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.14.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "0848af827fbc803c0f1a54610f91913ba32d1bc1782c28cbd7fdc41491cd7eff"

  # Specify dependencies
  depends_on "php"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
