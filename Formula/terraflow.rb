class Terraflow < Formula
  include Language::Python::Virtualenv

  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
  sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
  license "GNU Lesser General Public License (LGPL)"

  depends_on "python@3.10"

  resource "click" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
    sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
  end

  resource "beautifulsoup4" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
    sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
  end

  resource "bs4" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
    sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
  end

  resource "requests" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
    sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
  end

  resource "urllib3" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
    sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
  end

  resource "charset-normalizer" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
    sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
  end

  resource "idna" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
    sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
  end

  resource "certifi" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
    sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
  end

  resource "soupsieve" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"
    sha256 "1d70a3789f00905a619c5b9b4c381bc0f25e7a438c1ccf4b9dbc7a9a6a07b4c9"
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

sed -i '' 's|^ *url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta7.tar.gz"