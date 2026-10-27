require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.27.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.27.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "e9626d92f21c8788c2142d6e2c80740e205b3e6c31cf4b09ff93b02f019f0164"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.27.0", shell_output("#{bin}/shed --version")
  end

end
