class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.3.3/terraflow"
  sha256 "bc1b8bed2d2efc256dbb64aad89b24fc8ca2ea0e2e1dbc57f852c557604c209b"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.3.3"

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