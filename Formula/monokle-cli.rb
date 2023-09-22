class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.6.0"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.6.0/monokle-arm.tar.gz"
    sha256 "73d3c20f89524db5be2e1d20118ca422e692df3e0d52cce4dd37473211416886"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.6.0/monokle-amd64.tar.gz"
    sha256 "0c7fcdd670f2e0776eb958615af26570a755a19a761c9b9d00e1b668932c3e87"
  end

  def install
    bin.install "monokle"
  end
end
