class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.2.4/terraflow"
  sha256 "21855e745eb0a6877d590d3b96e323483d8ced0108d5cbb2d5a4d37e5d69fc84"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.2.4"

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