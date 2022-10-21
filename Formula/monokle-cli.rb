class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  url "https://github.com/kubeshop/monokle-core/releases/download/cli-v0.1.0/monokle.tar.gz"
  sha256 "e743d0181c2b43d082e0b426f5b632da8b1629799840b5f98cb470bcdb638e9b"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "monokle"
  end
end
