class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"
  
  version "0.1.0"
  url "https://github.com/kubeshop/monokle-core/releases/download/cli-v0.1.0/monokle.tar.gz"
  sha256 "971340d6a215ffaca76a6ab923818d80e1149c9d7947d568360520c07c9e4276"

  def install
    bin.install "monokle"
  end
end
