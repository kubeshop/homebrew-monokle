class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "0.3.3"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.3.3/monokle-arm.tar.gz"
    sha256 "6a44e2f39b7328183a29a5d0ec504a35708fff04b018689124b8cd534475d9c3"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.3.3/monokle-amd64.tar.gz"
    sha256 "d5cba9a2581db45eff6c5b7ee47f865fa593aaabe3e507574c3b9c6bfd7e5f6c"
  end

  def install
    bin.install "monokle"
  end
end
