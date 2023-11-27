class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.8.2"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.2/monokle-arm.tar.gz"
    sha256 "ca07736fa593f444dcf4dc01fa75d0ee0abad100b581337a253bfd13aed72747"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.2/monokle-amd64.tar.gz"
    sha256 "3f8a10b93716367ecd404096391be8a01c72496844718b8e7edcb225453e2b8e"
  end

  def install
    bin.install "monokle"
  end
end
