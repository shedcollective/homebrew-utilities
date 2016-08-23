require "formula"

class Serverbackup < Formula
  homepage "https://github.com/shedcollective/serverbackup"
  url "https://github.com/shedcollective/serverbackup/archive/3.0.1.tar.gz"
  sha256 "425d87aebc005f346d96a170934301a537734a6138249ea1288e570596c331b7"

  depends_on "s3cmd"

  def install
    prefix.install "serverbackup"
    bin.install_symlink prefix/"serverbackup"
  end
end