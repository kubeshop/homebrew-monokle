class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.7.2"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.7.2/monokle-arm.tar.gz"
    sha256 "2a5e5823cef2488d157e8979be99c62a025bafa6b9f044f21a9b4c2cb87436d7"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.7.2/monokle-amd64.tar.gz"
    sha256 "808ce395997a881ab25c776406327de9957c4fa48270db906fce4a86d9204f6c"
  end

  def install
    bin.install "monokle"
  end
end
