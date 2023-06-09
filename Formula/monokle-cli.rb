class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "0.4.1"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.1/monokle-arm.tar.gz"
    sha256 "8e88e30c995fd7ba273105a0534aaac1ca17a097caa5425b3859919dbdfaa588"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.1/monokle-amd64.tar.gz"
    sha256 "c62ca85e701aa069d74aef7cea3e665cc2a99442e96feae39c064ffed2b08567"
  end

  def install
    bin.install "monokle"
  end
end
