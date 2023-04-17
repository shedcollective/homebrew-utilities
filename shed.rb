require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.13.1.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.13.1.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "a73ecdf7f64bb32dd72a952565de8cec7e6382f1f86dc40224d2e659a948e9f1"

  # Specify dependencies
  depends_on "php"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
