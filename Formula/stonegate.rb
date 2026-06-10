class Stonegate < Formula
  desc "Unified MCP tool gateway — routing, connection pooling, circuit breakers, async dispatch"
  homepage "https://keystoneproject.dev"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonegate/darwin-aarch64/stonegate-v1.1.0-darwin-aarch64.tar.gz"
      sha256 "980a68295667df810f50288c7b859b8e89e9ef6ed29de420b0dbe190ee811db9"
    else
      url "https://keystoneproject.dev/releases/stonegate/darwin-x86_64/stonegate-v1.1.0-darwin-x86_64.tar.gz"
      sha256 "7cf859da6e3acc8940ff26f1b5a8d8b8cc996cf304de83bd251a77649ab66a2d"
    end
  end

  def install
    bin.install "stonegate"
  end

  test do
    assert_match "stonegate", shell_output("#{bin}/stonegate --version 2>&1", 0)
  end
end
