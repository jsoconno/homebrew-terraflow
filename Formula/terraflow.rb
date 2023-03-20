class Terraflow < Formula
    include Language::Python::Virtualenv
  
    desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
    homepage "https://github.com/jsoconno/terraflow"
    url "https://github.com/jsoconno/terraflow/archive/v0.1.0.tar.gz"
    sha256 "231dda8aa3408ce27d479114285ba654fb47fbd72d524c1211bc410f063007bb"
    license "GNU Lesser General Public License (LGPL)"
  
    depends_on "python@3.9"

    def install
      virtualenv_install_with_resources
    end

    resource "beautifulsoup4" do
      url "https://github.com/jsoconno/terraflow/archive/v0.1.0.tar.gz"
      sha256 "231dda8aa3408ce27d479114285ba654fb47fbd72d524c1211bc410f063007bb"
    end
    
    resource "bs4" do
      url "https://github.com/jsoconno/terraflow/archive/v0.1.0.tar.gz"
      sha256 "231dda8aa3408ce27d479114285ba654fb47fbd72d524c1211bc410f063007bb"
    end
  
    test do
      assert_match "version #{version}", shell_output("#{bin}/terraflow --version")
    end
  end
  