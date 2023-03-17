class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "efs/tags/v1.0.10"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.10/monokle-arm.tar.gz"
    sha256 "9f4c71253946d929d5eb5cf4961764b99afdd0fac82f7668fb3b891051a0ce95"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.10/monokle-amd64.tar.gz"
    sha256 "7bced01a5f63f80d67ffd48cd0c9ab78cb5416cdfd05e49967c5df5dab9544cb"
  end

  def install
    bin.install "monokle"
  end
end
