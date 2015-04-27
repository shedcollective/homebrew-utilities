require "formula"

class Gitpullall < Formula
  homepage "https://github.com/shedhq/gitpullall"
  url "https://github.com/shedhq/gitpullall/archive/1.0.1.tar.gz"
  sha1 "f55a6a1c6ce6d4c257e588cab1038e85b515a354"

  depends_on "git"

  def install
    prefix.install "gitpullall"
    bin.install_symlink prefix/"gitpullall"
  end
end