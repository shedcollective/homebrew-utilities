require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.14.3.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.14.3.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "92f36f11798da67d4c3122e1cd90cc4cac4899adb2da831d3d40a1d4de31a297"

  # Specify dependencies
  depends_on "php"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
