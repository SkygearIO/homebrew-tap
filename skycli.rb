require "language/node"

class Skycli < Formula
  desc "Skygear Portal command line tool"
  homepage "https://skygear.io"
  url "https://registry.npmjs.org/skycli/-/skycli-0.2.0.tgz"
  sha256 "ffb4c235e4c6d2959ff817c351a4e4798e31baa66ab6cd9099c70291164ec9eb"
  head "https://github.com/SkygearIO/skycli.git"
  version "0.2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
