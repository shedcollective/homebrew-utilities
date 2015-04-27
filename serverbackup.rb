require "formula"

class Serverbackup < Formula
  homepage "https://github.com/shedhq/serverbackup"
  url "https://github.com/shedhq/serverbackup/archive/1.1.0.tar.gz"
  sha1 "7f2bfe48641b83c85f158c09291d7ec84ed6f10b"

  depends_on "s3cmd"

  def install
    prefix.install "serverbackup"
    bin.install_symlink prefix/"serverbackup"
  end
end