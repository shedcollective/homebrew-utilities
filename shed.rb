require "formula"

class Shed < Formula
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.5.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.5.1.tar.gz | shasum -a 256
  sha256 "d4447bb51db6093389ac3ab69a0cad2c1891a1118caea75cb36568b58fe08eaf"

  # Specify dependencies
  depends_on "php"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end
end
