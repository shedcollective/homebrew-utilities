require "formula"

class Gitpullall < Formula
  homepage "https://github.com/shedhq/gitpullall"
  url "https://github.com/shedhq/gitpullall/archive/1.0.0.tar.gz"
  sha1 "075b19e8f743ba9e7027abec28017eeed526a7d5"

  depends_on "git"

  def install
    prefix.install "gitpullall"
    bin.install_symlink prefix/"gitpullall"
  end
end