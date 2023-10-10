class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.7.0"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.7.0/monokle-arm.tar.gz"
    sha256 "a11001af5d31a9fd746213f8f3201ba51d69cf52ec3e0a57bef58b7a6231bfff"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.7.0/monokle-amd64.tar.gz"
    sha256 "bd9d400ff4ac6a1143f34c39061fb0484ad68720272522cc2947a2037e4169a1"
  end

  def install
    bin.install "monokle"
  end
end
