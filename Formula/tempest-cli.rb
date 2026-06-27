class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.12.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "1b6b8384530f0391822f488fc011fd06c10c9cdc989d4d0bf1d4333ccb2effbd"
    end
  end

  def install
    bin.install "tempest"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tempest --version")
  end
end
