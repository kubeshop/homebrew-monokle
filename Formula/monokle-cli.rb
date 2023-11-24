class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.8.1"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.1/monokle-arm.tar.gz"
    sha256 "be254bd2e7de272fcf5ba332ccb383de79249828369725aff1eb81ebf6d0c059"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.1/monokle-amd64.tar.gz"
    sha256 "1b42fec3c54bd9a15f1b57d769021c32056430bf2c66beedd5dbe3a3e6cb8a5e"
  end

  def install
    bin.install "monokle"
  end
end
