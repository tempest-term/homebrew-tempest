cask "tempest" do
  version "3.17.0"
  sha256 "5875ec464009f28df7bad1ca5680d55f07b4908ec15745d6200be3076cf5e378"

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
