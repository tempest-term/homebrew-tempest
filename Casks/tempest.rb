cask "tempest" do
  version "3.17.4"
  sha256 "c1b7a17775356964247f8d1be2c6e7c9110c3f9c5f61fbea88988c05af7232b5"

  url "https://download.gotempest.app/Tempest-#{version}-arm64-mac.zip"
  name "Tempest"
  desc "The all-platform terminal emulator for the modern age"
  homepage "https://gotempest.app"

  livecheck do
    url "https://download.gotempest.app/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Tempest.app"

  zap trash: [
    "~/Library/Application Support/tempest-desktop",
    "~/Library/Preferences/app.gotempest.tempest.plist",
    "~/Library/Saved Application State/app.gotempest.tempest.savedState",
  ]
end
