class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.10.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "c0ad4321c446abe6e87e69958dcd28ff9c9cbc48d6cee61c8edd0e501fb3ed0e"
    end
  end

  def install
    bin.install "tempest"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tempest --version")
  end
end
