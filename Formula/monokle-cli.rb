class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "0.4.2"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.2/monokle-arm.tar.gz"
    sha256 "e39af2cedcaaa385e7e3f20e39d50369fa6aac435b83f8531bd323750b647e4b"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.4.2/monokle-amd64.tar.gz"
    sha256 "4e64373bba99f37233b8938b8a1c8873d7c06a2e206a54a565b09ba74441b4b9"
  end

  def install
    bin.install "monokle"
  end
end
