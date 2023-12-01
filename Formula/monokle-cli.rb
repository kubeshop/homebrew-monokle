class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.8.3"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.3/monokle-arm.tar.gz"
    sha256 "c2857925e12f17a342e5f9f3923bc93f201a42301f570b27a34a7d5e611233a6"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.8.3/monokle-amd64.tar.gz"
    sha256 "13ed81adb53bdb176080a080572c19c21faa09e123c3be20938497ab7838226d"
  end

  def install
    bin.install "monokle"
  end
end
