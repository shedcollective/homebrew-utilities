require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.8.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.8.1.tar.gz | shasum -a 256
  sha256 "3034f650d6fefd77224033765cc22da513d15eac63118f06732bff263176d695"

  # Specify dependencies
  depends_on "php"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
