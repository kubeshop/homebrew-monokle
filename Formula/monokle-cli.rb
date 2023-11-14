class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-cli"
  license "MIT"

  version "0.7.3"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.7.3/monokle-arm.tar.gz"
    sha256 "1b36b2b89f0439653d7bc65252afd00aa9f973341706fca7d2165e123c10b63d"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v0.7.3/monokle-amd64.tar.gz"
    sha256 "6ac73353d6db8d000de50298f3f81ac1d6c42581281038d99e94735c0ebc6db7"
  end

  def install
    bin.install "monokle"
  end
end
