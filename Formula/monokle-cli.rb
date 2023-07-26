class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "0.4.6"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.6/monokle-arm.tar.gz"
    sha256 "c3a0734634eb2627c4f7d2a1031a1038f97156ffb1347ad6e4a0cf41a0a99f8e"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.6/monokle-amd64.tar.gz"
    sha256 "855bf4d0cde60627589a379f0cf6079d0b389fc677fcd23c1cf34b98b724e91b"
  end

  def install
    bin.install "monokle"
  end
end
