class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "1.0.7"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.9/monokle-arm.tar.gz"
    sha256 "ae85efa91de880c3cf1b1003fca55c312aba2a0c9277ca27682d0b2a112fb713"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.9/monokle-amd64.tar.gz"
    sha256 "f7cf500585931c733fb6b2ad44a3d3a3627cd41a1f3a43d777a103823e6e01b8"
  end

  def install
    bin.install "monokle"
  end
end
