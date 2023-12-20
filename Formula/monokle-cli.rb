class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.8.5"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.5/monokle-arm.tar.gz"
    sha256 "8d39430f15b1110bb10920b022f75a4deba88981abc5950d112df1db3a06413a"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.5/monokle-amd64.tar.gz"
    sha256 "e88e0107baaac25fae7bd568fc79630f7aba6865367664d88534dcdccef8dbb8"
  end

  def install
    bin.install "monokle"
  end
end
