class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "1.0.7"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.8/monokle-arm.tar.gz"
    sha256 "775f871725b0f7ed1644718da0f1234d989f2477501666ef01caa81cdfc6c20e"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.8/monokle-amd64.tar.gz"
    sha256 "8a453efb6225de08a8ed6b78f48f5071de24e7ec69781a0b1688b36e6bb66fb6"
  end

  def install
    bin.install "monokle"
  end
end
