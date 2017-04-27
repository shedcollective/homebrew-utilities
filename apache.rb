require "formula"

class Apache < Formula
  homepage "https://github.com/shedcollective/apache-helper"
  url "https://github.com/shedcollective/apache-helper/archive/1.0.0.tar.gz"
  sha256 "5a96c34997bb19bfcb5275c5577662caff5611afe18a7fcea5c5a10306147b77"

  def install
    prefix.install "apache"
    bin.install_symlink prefix/"apache"
  end
end
