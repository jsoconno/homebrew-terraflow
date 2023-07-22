class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-24/terraflow"
  sha256 "46141933deeb6ed8fedb87a4466924de92984a8d3a8ee24054032d5380385d72"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.2.4-alpha-24"

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