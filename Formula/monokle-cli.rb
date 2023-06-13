class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "0.4.3"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.3/monokle-arm.tar.gz"
    sha256 "5017a012161ce9df41dda652b3427700912bd80b26dcb6e86afe4525e8b4639e"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.3/monokle-amd64.tar.gz"
    sha256 "05e87d0f89ab13513cf74c92f72248a6ee07820613a1512e56132ddd73c16ce3"
  end

  def install
    bin.install "monokle"
  end
end
