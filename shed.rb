require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.26.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.26.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "7e536a65459bba1e61fef424d6c4e8d5e2a3faa2f777e276d566b982a33b0708"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.26.0", shell_output("#{bin}/shed --version")
  end

end
