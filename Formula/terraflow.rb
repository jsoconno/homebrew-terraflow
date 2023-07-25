class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.2.5/terraflow"
  sha256 "ac7b73673e9287b7cf4e254e5c0251203b0d73d05487b4be26cdd792c078678a"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.2.5"

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