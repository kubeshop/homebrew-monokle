class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "0.4.5"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.5/monokle-arm.tar.gz"
    sha256 "9967d58286d5f6436764fffe4faaeebe4baad89726cc36de7c2c2d1583168996"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.5/monokle-amd64.tar.gz"
    sha256 "f2d6c7c22abc72a407e1ecb7c63d38e54bb1996c18c9292c9ffcc0b5feced030"
  end

  def install
    bin.install "monokle"
  end
end
