require "formula"

class Serverbackup < Formula
  homepage "https://github.com/shedcollective/serverbackup"
  url "https://github.com/shedcollective/serverbackup/archive/3.0.1.tar.gz"
  sha1 "31dad25f69a4bbcfc555a5da9ef45ee6dc5fa584"

  depends_on "s3cmd"

  def install
    prefix.install "serverbackup"
    bin.install_symlink prefix/"serverbackup"
  end
end