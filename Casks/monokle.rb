cask "monokle" do
  version "2.4.2"
  sha256 "526c0b965eaa707a4c4a452b678ae306be101f87557416507be24d863386e29a"
  
  url "https://github.com/kubeshop/monokle/releases/download/v#{version}/Monokle-mac-#{version}-universal.dmg",
      verified: "github.com/kubeshop/monokle"
  name "Monokle"
  desc "🧐 Monokle Desktop empowers you to better create, understand, and deploy YAML manifests with a visual UI that also provides policy validation and cluster insights."
  homepage "https://monokle.io"

  livecheck do
    url :url
    strategy :github_latest
  end
  
  depends_on macos: ">= :catalina"

  app "Monokle.app"
end
