class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "0.4.4"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.4/monokle-arm.tar.gz"
    sha256 "06bdeee40116e5d3368d5ef3bafe7a1511291cb3a8f288770d4ed868be2cf854"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.4/monokle-amd64.tar.gz"
    sha256 "46c7fb4c196d7e4ec4956aeb5f264cc5a7340c9e0206bfac87a528610835c0cb"
  end

  def install
    bin.install "monokle"
  end
end
