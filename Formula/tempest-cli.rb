class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.17.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "79461daa875ef6639d1990d7d53329ffb246e73e9276e55872c4dd073076f6b5"
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
