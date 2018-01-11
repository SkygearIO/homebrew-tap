require "language/node"

class Skycli < Formula
  desc "Skygear Portal command line tool"
  homepage "https://skygear.io"
  url "https://registry.npmjs.org/skycli/-/skycli-0.4.0.tgz"
  sha256 "aed9496a4adbe9a866a4ad547f8329ba5fdd93cb2ada1f7c3eddf308b89c754c"
  head "https://github.com/SkygearIO/skycli.git"
  version "0.4.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
