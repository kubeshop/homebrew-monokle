class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"

  version "1.0.7"
  if Hardware::CPU.arm?
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.7/monokle-arm.tar.gz"
    sha256 "1617409eecc38ce44b86e1fd4fd535c2c3b51aad25804eb078dffbd889c6daa5"
  else
    url "https://github.com/kubeshop/monokle-cli/releases/download/v1.0.7/monokle-amd64.tar.gz"
    sha256 "df7f53721a28e4d5a63713c2dc350d4ec6876a92e73537b7cc51c5852bbec303"
  end

  def install
    bin.install "monokle"
  end
end
