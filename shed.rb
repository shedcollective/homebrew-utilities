require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.28.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.28.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "6ac2fd17056c2053d6cbdc43ed565ad98b09414c35514ecf96f213167a7d8845"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.28.0", shell_output("#{bin}/shed --version")
  end

end
