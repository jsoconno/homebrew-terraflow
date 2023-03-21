class Terraflow < Formula
  include Language::Python::Virtualenv

  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/archive/v0.1.0.tar.gz"
  sha256 "231dda8aa3408ce27d479114285ba654fb47fbd72d524c1211bc410f063007bb"
  license "GNU Lesser General Public License (LGPL)"

  depends_on "python@3.10"

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/75/f8/de84282681c5a8307f3fff67b64641627b2652752d49d9222b77400d02b8/beautifulsoup4-4.11.2.tar.gz"
    sha256 "bc4bdda6717de5a2987436fb8d72f45dc90dd856bdfd512a1314ce90349a0106"
  end

  resource "bs4" do
    url "https://files.pythonhosted.org/packages/10/ed/7e8b97591f6f456174139ec089c769f89a94a1a4025fe967691de971f314/bs4-0.0.1.tar.gz"
    sha256 "36ecea1fd7cc5c0c6e4a1ff075df26d50da647b75376626cc186e2212886dd3a"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/ee/391076f5937f0a8cdf5e53b701ffc91753e87b07d66bae4a09aa671897bf/requests-2.28.2.tar.gz"
    sha256 "98b1b2782e3c6c4904938b84c0eb932721069dfdb9134313beff7c83c2df24bf"
  end

  def install
    virtualenv_install_with_resources
    libexec.install Dir["*"]

    # Remove existing terraflow file if it exists
    rm_f bin/"terraflow"

    (bin/"terraflow").write <<~EOS
      #!/bin/bash
      export PYTHONPATH="#{libexec}:$PYTHONPATH"
      exec "#{libexec}/bin/python" "#{libexec}/terraflow/__init__.py" "$@"
    EOS

    (bin/"terraflow").chmod 0755
  end

  test do
    assert_match "version #{version}", shell_output("#{bin}/terraflow --version")
  end
end
