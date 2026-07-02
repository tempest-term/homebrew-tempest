cask "tempest" do
  version "3.12.2"
  sha256 "be974b7c60c90bea1ca87c9d4cb413eed57f54b7e9c0cca5fd98bbd041fcdc3e"

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
