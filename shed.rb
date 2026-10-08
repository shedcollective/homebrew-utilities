require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.25.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.25.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "b7d08b95411da2f7ba8e658f1b32c144bff1bedad4da9f5abaf908107ed6427b"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.25.0", shell_output("#{bin}/shed --version")
  end

end
