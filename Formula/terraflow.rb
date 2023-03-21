class Terraflow < Formula
  include Language::Python::Virtualenv

  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
  sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
  license "GNU Lesser General Public License (LGPL)"

  depends_on "python@3.10"

  resource "click" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
    sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
  end

  resource "beautifulsoup4" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
    sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
  end

  resource "bs4" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
    sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
  end

  resource "requests" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
    sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
  end

  resource "urllib3" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
    sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
  end

  resource "charset-normalizer" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
    sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
  end

  resource "idna" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
    sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
  end

  resource "certifi" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
    sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
  end

  resource "soupsieve" do
    url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"
    sha256 "b60c78242605b5c807152dc37a9c15dba7ad336c67e5a5adfeee0a11fdcbc67d"
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

sed -i '' 's|^ *url .*\/terraflow\/archive\/.*\"|  url "https://github.com/jsoconno/terraflow/archive/v0.1.3-beta8.tar.gz"