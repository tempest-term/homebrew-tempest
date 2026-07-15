class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.12.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "a3e2317d375d0aa6703f6b9be6de7bc782dbbc6d21c424058c72e6bc2fe250de"
    end
  end

  def install
    bin.install "tempest"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tempest --version")
  end
end
