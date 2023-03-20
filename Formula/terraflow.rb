class Terraflow < Formula
    include Language::Python::Virtualenv
  
    desc "A toolkit for making coding, documenting, and deploying Terraform simpler."
    homepage "https://github.com/jsoconno/terraflow"
    url "https://github.com/jsoconno/terraflow/archive/v0.1.0-beta2.tar.gz"
    sha256 "1776160db53f299df397853310b5c6a7cf63da5ba7440395c4941893a6127e96"
    license "GNU Lesser General Public License (LGPL)"
  
    depends_on "python@3.10"

    resource "beautifulsoup4" do
      url "https://files.pythonhosted.org/packages/c6/ee/16d6f808f5668317d7c23f942091fbc694bcded6aa39678e5167f61b2ba0/beautifulsoup4-4.11.2-py3-none-any.whl"
      sha256 "0e79446b10b3ecb499c1556f7e228a53e64a2bfcebd455f370d8927cb5b59e39"
    end
    
    resource "black" do
      url "https://files.pythonhosted.org/packages/d0/cb/0a38ffdafbb4b3f337adaf1b79aeaf4b8a21ed18835acad6349e46c78c80/black-23.1.0-cp310-cp310-macosx_10_16_arm64.whl"
      sha256 "b6a92a41ee34b883b359998f0c8e6eb8e99803aa8bf3123bf2b2e6fec505a221"
    end
    
    resource "bs4" do
      url "https://files.pythonhosted.org/packages/10/ed/7e8b97591f6f456174139ec089c769f89a94a1a4025fe967691de971f314/bs4-0.0.1.tar.gz"
      sha256 "36ecea1fd7cc5c0c6e4a1ff075df26d50da647b75376626cc186e2212886dd3a"
    end
    
    resource "certifi" do
      url "https://files.pythonhosted.org/packages/71/4c/3db2b8021bd6f2f0ceb0e088d6b2d49147671f25832fb17970e9b583d742/certifi-2022.12.7-py3-none-any.whl"
      sha256 "4ad3232f5e926d6718ec31cfc1fcadfde020920e278684144551c91769c7bc18"
    end
    
    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/4f/a2/9031ba4a008e11a21d7b7aa41751290d2f2035a2f14ecb6e589771a17c47/charset_normalizer-3.1.0-cp310-cp310-macosx_10_9_universal2.whl"
      sha256 "e0ac8959c929593fee38da1c2b64ee9778733cdf03c482c9ff1d508b6b593b2b"
    end
    
    resource "click" do
      url "https://files.pythonhosted.org/packages/c2/f1/df59e28c642d583f7dacffb1e0965d0e00b218e0186d7858ac5233dce840/click-8.1.3-py3-none-any.whl"
      sha256 "bb4d8133cb15a609f44e8213d9b391b0809795062913b383c62be0ee95b1db48"
    end
    
    resource "flake8" do
      url "https://files.pythonhosted.org/packages/d9/6a/bb0122ebe280476c924470779d2595f1403878cafe3c8a343ac56a5a9c0e/flake8-6.0.0-py2.py3-none-any.whl"
      sha256 "3833794e27ff64ea4e9cf5d410082a8b97ff1a06c16aa3d2027339cd0f1195c7"
    end
    
    resource "idna" do
      url "https://files.pythonhosted.org/packages/fc/34/3030de6f1370931b9dbb4dad48f6ab1015ab1d32447850b9fc94e60097be/idna-3.4-py3-none-any.whl"
      sha256 "90b77e79eaa3eba6de819a0c442c0b4ceefc341a7a2ab77d7562bf49f425c5c2"
    end
    
    resource "mccabe" do
      url "https://files.pythonhosted.org/packages/27/1a/1f68f9ba0c207934b35b86a8ca3aad8395a3d6dd7921c0686e23853ff5a9/mccabe-0.7.0-py2.py3-none-any.whl"
      sha256 "6c2d30ab6be0e4a46919781807b4f0d834ebdd6c6e3dca0bda5a15f863427b6e"
    end
    
    resource "mypy-extensions" do
      url "https://files.pythonhosted.org/packages/2a/e2/5d3f6ada4297caebe1a2add3b126fe800c96f56dbe5d1988a2cbe0b267aa/mypy_extensions-1.0.0-py3-none-any.whl"
      sha256 "4392f6c0eb8a5668a69e23d168ffa70f0be9ccfd32b5cc2d26a34ae5b844552d"
    end
    
    resource "packaging" do
      url "https://files.pythonhosted.org/packages/ed/35/a31aed2993e398f6b09a790a181a7927eb14610ee8bbf02dc14d31677f1c/packaging-23.0-py3-none-any.whl"
      sha256 "714ac14496c3e68c99c29b00845f7a2b85f3bb6f1078fd9f72fd20f0570002b2"
    end
    
    resource "pathspec" do
      url "https://files.pythonhosted.org/packages/be/c8/551a803a6ebb174ec1c124e68b449b98a0961f0b737def601e3c1fbb4cfd/pathspec-0.11.1-py3-none-any.whl"
      sha256 "d8af70af76652554bd134c22b3e8a1cc46ed7d91edcdd721ef1a0c51a84a5293"
    end
    
    resource "platformdirs" do
      url "https://files.pythonhosted.org/packages/7b/e1/593f693096c50411a2bf9571f66bc3be9d0f79a4a50e95aab581458b0e3c/platformdirs-3.1.1-py3-none-any.whl"
      sha256 "e5986afb596e4bb5bde29a79ac9061aa955b94fca2399b7aaac4090860920dd8"
    end
    
    resource "pycodestyle" do
      url "https://files.pythonhosted.org/packages/a2/54/001fdc0d69e8d0bb86c3423a6fa6dfada8cc26317c2635ab543e9ac411bd/pycodestyle-2.10.0-py2.py3-none-any.whl"
      sha256 "8a4eaf0d0495c7395bdab3589ac2db602797d76207242c17d470186815706610"
    end
    
    resource "pyflakes" do
      url "https://files.pythonhosted.org/packages/af/4c/b1c7008aa7788b3e26c06c60aa18da7d3aa1f00e344aa3f18ac92768854b/pyflakes-3.0.1-py2.py3-none-any.whl"
      sha256 "ec55bf7fe21fff7f1ad2f7da62363d749e2a470500eab1b555334b67aa1ef8cf"
    end
    
    resource "PyYAML" do
      url "https://files.pythonhosted.org/packages/44/e5/4fea13230bcebf24b28c0efd774a2dd65a0937a2d39e94a4503438b078ed/PyYAML-6.0-cp310-cp310-macosx_10_9_x86_64.whl"
      sha256 "d4db7c7aef085872ef65a8fd7d6d09a14ae91f691dec3e87ee5ee0539d516f53"
    end
    
    resource "requests" do
      url "https://files.pythonhosted.org/packages/d2/f4/274d1dbe96b41cf4e0efb70cbced278ffd61b5c7bb70338b62af94ccb25b/requests-2.28.2-py3-none-any.whl"
      sha256 "64299f4909223da747622c030b781c0d7811e359c37124b4bd368fb8c6518baa"
    end
    
    resource "soupsieve" do
      url "https://files.pythonhosted.org/packages/d2/70/2c92d7bc961ba43b7b21032b7622144de5f97dec14b62226533f6940798e/soupsieve-2.4-py3-none-any.whl"
      sha256 "49e5368c2cda80ee7e84da9dbe3e110b70a4575f196efb74e51b94549d921955"
    end
    
    resource "tomli" do
      url "https://files.pythonhosted.org/packages/97/75/10a9ebee3fd790d20926a90a2547f0bf78f371b2f13aa822c759680ca7b9/tomli-2.0.1-py3-none-any.whl"
      sha256 "939de3e7a6161af0c887ef91b7d41a53e7c5a1ca976325f429cb46ea9bc30ecc"
    end
    
    resource "typing_extensions" do
      url "https://files.pythonhosted.org/packages/31/25/5abcd82372d3d4a3932e1fa8c3dbf9efac10cc7c0d16e78467460571b404/typing_extensions-4.5.0-py3-none-any.whl"
      sha256 "fb33085c39dd998ac16d1431ebc293a8b3eedd00fd4a32de0ff79002c19511b4"
    end
    
    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/7b/f5/890a0baca17a61c1f92f72b81d3c31523c99bec609e60c292ea55b387ae8/urllib3-1.26.15-py2.py3-none-any.whl"
      sha256 "aa751d169e23c7479ce47a0cb0da579e3ede798f994f5816a74e4f4500dcea42"
    end
  
    def install
      venv = virtualenv_create(libexec, "python3")
      venv.pip_install_and_link buildpath
      bin.install_symlink libexec/"bin/terraflow"
    end
  
    test do
      assert_match "version #{version}", shell_output("#{bin}/terraflow --version")
    end
  end
  