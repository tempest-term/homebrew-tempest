class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.18.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "f62bebef415b7cfa2e2f4341396c6336731e8951e25f6e8979716b2f46ffdd45"
    end
  end

  def install
    bin.install "tempest"
    generate_completions_from_executable(bin/"tempest", "completions", shells: [:bash, :zsh, :fish])
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tempest --version")
  end
end
