class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.8.0"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.0/monokle-arm.tar.gz"
    sha256 "86561e3dedd49344e81f3509ded5c0239a90e2183117041531624cffbcb44524"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.0/monokle-amd64.tar.gz"
    sha256 "c6f57a5daa3d4b5601d064e05043f720b9e9f5e41192b467a52ca26b524ff02c"
  end

  def install
    bin.install "monokle"
  end
end
