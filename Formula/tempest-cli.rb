class TempestCli < Formula
  desc "All-platform terminal emulator CLI: SSH, Telnet, RCON, FS, MCP server"
  homepage "https://gotempest.app"
  version "3.17.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.gotempest.app/cli/tempest-#{version}-darwin-arm64.tar.gz"
      sha256 "8795610b9e395ba3749a8e58d6a713b184ceab32f1a4250b1493320a274bdec7"
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
