require "formula"

class Apache < Formula
  homepage "https://github.com/shedcollective/apache-helper"
  url "https://github.com/shedcollective/apache-helper/archive/1.0.1.tar.gz"
  sha256 "0d7d5da2d651f3509c41da51ffcb97b9fa28a01d376778520ad43f6d930c24d2"

  def install
    prefix.install "apache"
    bin.install_symlink prefix/"apache"
  end
end
