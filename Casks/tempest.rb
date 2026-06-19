cask "tempest" do
  version "3.11.0"
  sha256 "c8bb8ba207cb8a6dc12c5c0856886d0b862e6cba8066841f3bdca99100b5a5a4"

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
