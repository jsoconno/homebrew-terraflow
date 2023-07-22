# class Terraflow < Formula
#   include Language::Python::Virtualenv

#   desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
#   homepage "https://github.com/jsoconno/terraflow"
#   https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#   
#   license "GNU Lesser General Public License (LGPL)"

#   depends_on "python@3.9"

#   resource "beautifulsoup4" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "black" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "bs4" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "certifi" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "charset-normalizer" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "click" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "flake8" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "idna" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "mccabe" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "mypy-extensions" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "packaging" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "pathspec" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "platformdirs" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "pycodestyle" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "pyflakes" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "pytest" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "pyyaml" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "requests" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "soupsieve" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "tomli" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "typing_extensions" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end
  
#   resource "urllib3" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end

#   resource "wheel" do
#     https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-4/terraflow
#     
#   end

#   def install
#     virtualenv_install_with_resources
#     libexec.install Dir["*"]

#     # Remove existing terraflow file if it exists
#     rm_f bin/"terraflow"

#     (bin/"terraflow").write <<~EOS
#       #!/bin/bash
#       export PYTHONPATH="#{libexec}:$PYTHONPATH"
#       exec "#{libexec}/bin/python" "#{libexec}/terraflow/__init__.py" "$@"
#     EOS

#     (bin/"terraflow").chmod 0755
#   end

#   test do
#     assert_match "version #{version}", shell_output("#{bin}/terraflow --version")
#   end
# end

class Terraflow < Formula
  desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
  homepage "https://github.com/jsoconno/terraflow"
  url "https://github.com/jsoconno/terraflow/releases/download/v0.2.4-alpha-22/terraflow"
  sha256 "f3d5452a74478f30f981eba328f97eeae4e28641b99d661861c27560f9b6aecf"
  license "GNU Lesser General Public License (LGPL)"
  version "v0.2.4-alpha-22"

  def install
    bin.install "terraflow"
  end

  def post_install
    chmod 0755, bin/"terraflow"
  end
end