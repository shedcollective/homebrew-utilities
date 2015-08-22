require "formula"

class Serverbackup < Formula
  homepage "https://github.com/shedhq/serverbackup"
  url "https://github.com/shedhq/serverbackup/archive/3.0.1.tar.gz"
  sha1 "c76b34f34f92745433970e2352a6d0b9"

  depends_on "s3cmd"

  def install
    prefix.install "serverbackup"
    bin.install_symlink prefix/"serverbackup"
  end
end