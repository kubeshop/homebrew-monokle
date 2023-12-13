class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.8.4"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.4/monokle-arm.tar.gz"
    sha256 "bad3109a6ee9a37c764ec9d7676d819d4db6997687a0fc4df15c0ae86323550b"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.4/monokle-amd64.tar.gz"
    sha256 "fef93793eb6458419eeb5d843c95cbc5269317b85e7469e4a8c7d431493775a9"
  end

  def install
    bin.install "monokle"
  end
end
