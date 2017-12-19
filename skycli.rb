require "language/node"

class Skycli < Formula
  desc "Skygear Portal command line tool"
  homepage "https://skygear.io"
  url "https://registry.npmjs.org/skycli/-/skycli-0.3.0.tgz"
  sha256 "28286cd693efe0e6b67fa4a7dcc0c4e1db220dc16eb363a3449ba86002400ae2"
  head "https://github.com/SkygearIO/skycli.git"
  version "0.3.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
