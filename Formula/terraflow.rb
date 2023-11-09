class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.3.2/terraflow"
  sha256 "c9af3752b6e9606c1fb15cb14a2f4dad107385439cdde4f44f922ba5e5a46652"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.3.2"

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