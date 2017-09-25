require "language/node"

class Skycli < Formula
  desc "Skygear Portal command line tool"
  homepage "https://skygear.io"
  url "https://registry.npmjs.org/skycli/-/skycli-0.1.1-0.tgz"
  sha256 "dbcba037681409c22a1f7bd29ccbdc531d78f640dc5aaa272e1fb0072e470a4b"
  head "https://github.com/SkygearIO/skycli.git"
  version "0.1.1-0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
