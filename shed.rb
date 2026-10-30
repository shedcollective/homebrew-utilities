require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.29.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.29.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "eec0421b192bcdd54c2f634c38b950deccb8e996900373135e96ce8bebb9a080"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.29.0", shell_output("#{bin}/shed --version")
  end

end
