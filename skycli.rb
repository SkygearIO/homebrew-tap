require "language/node"

class Skycli < Formula
  desc "Skygear Portal command line tool"
  homepage "https://skygear.io"
  url "https://registry.npmjs.org/skycli/-/skycli-0.1.1-2.tgz"
  sha256 "4aa7eae9c22f69375d31623335ec35a48eb7249728f12804c48e1bab45e13251"
  head "https://github.com/SkygearIO/skycli.git"
  version "0.1.1-2"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
