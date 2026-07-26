class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.13.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "b93c51af2cfcc3e116dff3763cda15bb28848845ea2a229d4e0c3cca3e8f4e3c"
    end
  end

  def install
    bin.install "tempest"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tempest --version")
  end
end
