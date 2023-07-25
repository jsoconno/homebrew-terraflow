class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.2.6/terraflow"
  sha256 "d4a3a5c565c25ff60546f4ac11c7e635afbc390471ec0696513436af951313b2"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.2.6"

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