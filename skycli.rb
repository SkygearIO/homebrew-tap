require "language/node"

class Skycli < Formula
  desc "Skygear Portal command line tool"
  homepage "https://skygear.io"
  url "https://registry.npmjs.org/skycli/-/skycli-0.1.1-1.tgz"
  sha256 "9a15e905bd1c1136653c54d494af877a5299317afbbce2c32b625260569fd909"
  head "https://github.com/SkygearIO/skycli.git"
  version "0.1.1-1"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
