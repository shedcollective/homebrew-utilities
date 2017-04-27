require "formula"

class Apache < Formula
  homepage "https://github.com/shedcollective/apache-helper"
  url "https://github.com/shedcollective/apache-helper/archive/1.0.0.tar.gz"
  sha256 "c1ce15412e0973f58572069683d23eff6f933308e6deddc5f5da2253729da322"

  def install
    prefix.install "apache"
    bin.install_symlink prefix/"apache"
  end
end
