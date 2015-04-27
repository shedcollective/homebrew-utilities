require "formula"

class Serverbackup < Formula
  homepage "https://github.com/shedhq/serverbackup"
  url "https://github.com/shedhq/serverbackup/archive/1.1.0.tar.gz"
  sha1 "0ae1c13730c87ca19322821a0b3b7d18"

  depends_on "s3cmd"

  def install
    prefix.install "serverbackup"
    bin.install_symlink prefix/"serverbackup"
  end
end