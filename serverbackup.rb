require "formula"

class Serverbackup < Formula
  homepage "https://github.com/shedhq/serverbackup"
  url "https://github.com/shedhq/serverbackup/archive/1.1.1.tar.gz"
  sha1 "6d55fbba024435cc12aeb7e0f4217c423a0a9135"

  depends_on "s3cmd"

  def install
    prefix.install "serverbackup"
    bin.install_symlink prefix/"serverbackup"
  end
end