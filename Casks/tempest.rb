cask "tempest" do
  version "3.10.1"
  sha256 "1937775d0088b73e5f4384e58895e07eca9f939e1fc9d8f56a91f0adaa340ded"

  url "https://download.gotempest.app/Tempest-#{version}-arm64-mac.zip"
  name "Tempest"
  desc "The all-platform terminal emulator for the modern age"
  homepage "https://gotempest.app"

  livecheck do
    url "https://download.gotempest.app/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Tempest.app"

  zap trash: [
    "~/Library/Application Support/tempest-desktop",
    "~/Library/Preferences/app.gotempest.tempest.plist",
    "~/Library/Saved Application State/app.gotempest.tempest.savedState",
  ]
end
