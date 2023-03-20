class Yourproject < Formula
    include Language::Python::Virtualenv
  
    desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
    homepage "https://github.com/jsoconno/terraflow"
    url "https://github.com/jsoconno/terraflow/archive/v0.1.0-beta2.tar.gz"
    sha256 "1776160db53f299df397853310b5c6a7cf63da5ba7440395c4941893a6127e96"
    license "GNU Lesser General Public License (LGPL)"
  
    depends_on "python@3.10"
  
    def install
      venv = virtualenv_create(libexec, "python3")
      venv.pip_install_and_link buildpath
      bin.install_symlink libexec/"bin/terraflow"
    end
  
    test do
      assert_match "version #{version}", shell_output("#{bin}/terraflow --version")
    end
  end
  