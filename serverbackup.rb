require "formula"

class Serverbackup < Formula
  homepage "https://github.com/shedhq/serverbackup"
  url "https://github.com/shedhq/serverbackup/archive/2.0.0.tar.gz"
  sha1 "65c99acde508931d96ebbca66798d28de2b754cf"

  depends_on "s3cmd"

  def install
    prefix.install "serverbackup"
    bin.install_symlink prefix/"serverbackup"
  end
end