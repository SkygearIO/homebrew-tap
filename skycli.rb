require "language/node"

class Skycli < Formula
  desc "Skygear Portal command line tool"
  homepage "https://skygear.io"
  url "https://registry.npmjs.org/skycli/-/skycli-0.4.1.tgz"
  sha256 "ec876e244b05c89fde245ecb6b70d6440bb3d8ceb68d485f1de65072cd62df67"
  head "https://github.com/SkygearIO/skycli.git"
  version "0.4.1"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
