class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.17.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "4c9d914b8cc972bc8d46d0bb6d9b2a8911675961ac17fd23712dd288b4076eef"
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
