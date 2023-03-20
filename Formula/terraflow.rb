class Terraflow < Formula
    include Language::Python::Virtualenv
  
    desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
    homepage "https://github.com/jsoconno/terraflow"
    url "added-by-github-pipeline-on-release"
    sha256 "add-by-github-pipeline-on-release"
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
  