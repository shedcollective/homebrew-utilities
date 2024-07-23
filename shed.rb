require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.15.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.15.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "ef4e6b5b666224ca5b5d1ca0c760b00a79920c10036b27c509ca4b1c1c76876c"

  # Specify dependencies
  depends_on "php"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
