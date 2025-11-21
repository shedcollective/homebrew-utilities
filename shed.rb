require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.19.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.19.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "cb50bf7d3b79ec4f4b1f1c90fc35ad7e896a3a6be8211b52a0e760c3893da3cc"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.19.0", shell_output("#{bin}/shed --version")
  end

end
