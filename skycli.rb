require "language/node"

class Skycli < Formula
  desc "Skygear Portal command line tool"
  homepage "https://skygear.io"
  url "https://github.com/SkygearIO/skycli/archive/tap.tar.gz"
  sha256 "1f1b736620bf3ce421af750843e2d7303b82b38e793ac210fd917c278b79cc32"
  head "https://github.com/SkygearIO/skycli.git"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
