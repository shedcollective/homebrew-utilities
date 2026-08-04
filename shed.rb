require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.20.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.20.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "c7bd809b1f075ab1c7f35a651d9f8eccc9ac78cb0ec453baef5b87fd47f01c92"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.20.0", shell_output("#{bin}/shed --version")
  end

end
