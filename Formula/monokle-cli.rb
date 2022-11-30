class MonokleCli < Formula
  desc "Monokle CLI analyzes your Kubernetes resources to quickly find misconfigurations."
  homepage "https://github.com/kubeshop/monokle-core/tree/main/packages/cli"
  license "MIT"
  
  version "0.3.2"
  url "https://github.com/kubeshop/monokle-core/releases/download/monokle%2Fcli%400.3.2/monokle.tar.gz"
  sha256 "59d75d139f0d950c660f2c360cf3a060ebf5aaa5adfc2fe16cb0782e561f60c6"

  def install
    bin.install "monokle"
  end
end
