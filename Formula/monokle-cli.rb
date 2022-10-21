class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"
  
  version "0.1.0"
  url "https://github.com/kubeshop/monokle-core/releases/download/cli-v0.1.0/monokle.tar.gz"
  sha256 "8587dc9a41e0e95726d6200921a0b878dd39952fda2750e1fad6e1814cdb68c3"

  def install
    bin.install "monokle"
  end
end
