require "formula"

class Gitpullall < Formula
  homepage "https://github.com/shedcollective/gitpullall"
  url "https://github.com/shedcollective/gitpullall/archive/1.0.1.tar.gz"

  # Generate hash of the above file
  # curl -sL https://github.com/nails/command-line-tool/archive/1.0.2.tar.gz | shasum -a 256
  sha256 "bb8f345f81e4d2eceb4ecedeee65c53faae536125d3b6cc65cdb678bbeac367f"

  depends_on "git"

  def install
    prefix.install "gitpullall"
    bin.install_symlink prefix/"gitpullall"
  end
end