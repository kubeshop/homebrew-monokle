class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.5.1"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.5.1/monokle-arm.tar.gz"
    sha256 "2afbe6719de6e54e19a5e897c26c1758ebef6d517c1b2cac633df68423c159f1"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.5.1/monokle-amd64.tar.gz"
    sha256 "cab128bba6fe09e5ca524924df990a5042c22bbcc403ce41fad540f372bb4873"
  end

  def install
    bin.install "monokle"
  end
end
