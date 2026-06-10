class Stonegate < Formula
  desc "Unified MCP tool gateway — routing, connection pooling, circuit breakers, async dispatch"
  homepage "https://keystoneproject.dev"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonegate/darwin-aarch64/stonegate-v1.0.0-darwin-aarch64.tar.gz"
      sha256 "80874a4b6ee80b6bb2c7f1818dfea64f23fdc082cb3c9fdbaf8d0e519408e9e2"
    else
      url "https://keystoneproject.dev/releases/stonegate/darwin-x86_64/stonegate-v1.0.0-darwin-x86_64.tar.gz"
      sha256 "32c670071b69293f1c8bb0a0fce49afa78c8b06a55868ea1429b7714ddeccd7e"
    end
  end

  def install
    bin.install "stonegate"
  end

  test do
    assert_match "stonegate", shell_output("#{bin}/stonegate --version 2>&1", 0)
  end
end
