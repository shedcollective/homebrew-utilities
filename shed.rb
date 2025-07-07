require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.18.0.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.18.0.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "e316f3e71f4b73c744cb5c9517aad4ef22545a8caae94b261f0477eeb8af31bf"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.18.0", shell_output("#{bin}/shed --version")
  end

end
