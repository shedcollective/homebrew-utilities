require "formula"

class Shed < Formula
  desc "A tool which makes life at Shed easier."
  homepage "https://shedcollective.com"
  url "https://github.com/shedcollective/shed-cli-tool/archive/1.19.2.tar.gz"

  # Generate hash of the above file and put onto clipboard
  # printf $(curl -sL https://github.com/shedcollective/shed-cli-tool/archive/1.19.2.tar.gz | shasum -a 256 | cut -c 1-64) | pbcopy
  sha256 "6a7f25bdbb417d12061ddcb8c684db9d7c996883ff22898a29425c67d49f1cb5"

  # Specify dependencies
  depends_on "php" => ">=8.1"
  depends_on "s3cmd"
  depends_on "mysql-client"

  def install
    bin.install Dir["dist/*"]
  end

  test do
    assert_match "Shed Command Line Tool 1.19.2", shell_output("#{bin}/shed --version")
  end

end
