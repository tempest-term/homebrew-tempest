class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.17.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "8a868f9c8c078e8bd6a03479c1b692b475f067badc441588681e3b48b3603e65"
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
