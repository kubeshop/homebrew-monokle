class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.7.1"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.7.1/monokle-arm.tar.gz"
    sha256 "80d1ec08aa377080df2745d9a1cfd5fb4cf6d1bb924a79b205a30b5f9d8abb9f"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.7.1/monokle-amd64.tar.gz"
    sha256 "b10218acde5afa4e571ddb19ff4762b48b7778fe3d2dfb395fb9ebeefb233121"
  end

  def install
    bin.install "monokle"
  end
end
