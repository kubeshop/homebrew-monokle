class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "0.5.0"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.5.0/monokle-arm.tar.gz"
    sha256 "135876edec4017951f9ad7c00da70bdf3b2d68e99cddf14053baed5e92e7825b"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.5.0/monokle-amd64.tar.gz"
    sha256 "16cf32081a4bf41ceda52d194a4acd260a470dbc0eea159a65620a6f61c49ec0"
  end

  def install
    bin.install "monokle"
  end
end
