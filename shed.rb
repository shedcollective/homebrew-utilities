require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.28.1.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.28.1.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "016a5847ea039f87634cb8253da06ec58e9d1495fd3e07e1e3c8a7efbf523fa4"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.28.1", shell_output("#{bin}/shed --version")
  end

end
