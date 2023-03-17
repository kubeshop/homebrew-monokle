class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "1.0.11"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.11/monokle-arm.tar.gz"
    sha256 "409d2c945321f2715dc6c929a1f114fd4cf6adb4f6e5b88c1fa6193b1afd3ad4"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.11/monokle-amd64.tar.gz"
    sha256 "42493e7fdfb7f9fc9a73928b5f5761342d50ecd7df94271164b52a70cf3dd2ab"
  end

  def install
    bin.install "monokle"
  end
end
