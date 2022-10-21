class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"
  
  version "0.1.0"
  url "https://github.com/kubeshop/monokle-core/releases/download/cli-v0.1.0/monokle.tar.gz"
  sha256 "cbd7311851ecc690cf7aa8fd67806f8376e43366e51d53d399a0b95a7124a417"

  def install
    bin.install "monokle"
  end
end
