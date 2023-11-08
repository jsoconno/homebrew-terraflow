class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.3.1/terraflow"
  sha256 "3e0203aa5957abed9bd322caaf9eb6977e3b73e3a2c70ed641f2341e18bd600b"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.3.1"

  def install
    bin.install "terraflow"
  end

  def post_install
    chmod 0755, bin/"terraflow"
  end

  test do
    system "#{bin}/terraflow", "--version"
  end
end