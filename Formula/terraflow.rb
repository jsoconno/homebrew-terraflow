class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.3.0/terraflow"
  sha256 "7d2bfaa57c558e117c74ddbc2c6cb3bd5f783215780192b3e1d2c2dcb6154150"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.3.0"

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