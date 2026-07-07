class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.12.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "3f94c0d5614533e27c09dcbcb15a0e5e36ff733e9e1cf35e9bcf69d25735bcfd"
    end
  end

  def install
    bin.install "tempest"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tempest --version")
  end
end
