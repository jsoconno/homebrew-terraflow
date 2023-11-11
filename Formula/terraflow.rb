class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.4.0/terraflow"
  sha256 "06e833ea391ecc43469dffef0f65459851d6eb2918290ed2714faebfeb1ef1de"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.4.0"

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