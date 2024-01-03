class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.8.6"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.6/monokle-arm.tar.gz"
    sha256 "e1a9cda3544cb12ffc5eba70f58b0443c260aeb9503986cb34d5047ad5844169"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.6/monokle-amd64.tar.gz"
    sha256 "2070b93721bd376c0a3d4fa2bffa8cfa289f9c7f6949eead9f6db49f63a869cd"
  end

  def install
    bin.install "monokle"
  end
end
