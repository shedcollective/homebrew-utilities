require "formula"

class Gitpullall < Formula
  homepage "https://github.com/shedhq/gitpullall"
  url "https://github.com/nailsapp/command-line-tool/archive/0.2.2.tar.gz"
  sha1 "7a18389565c0e331b08b9d15d8de191fd5621c85"

  depends_on "git"

  def install
    prefix.install "gitpullall"
    bin.install_symlink prefix/"gitpullall"
  end
end