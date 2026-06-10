class Stonegate < Formula
  desc "Unified MCP tool gateway — routing, connection pooling, circuit breakers, async dispatch"
  homepage "https://keystoneproject.dev"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonegate/darwin-aarch64/stonegate-v1.0.0-darwin-aarch64.tar.gz"
      sha256 "cfc4f6720c3fcd824def28ecc392920f817a0ebd92a033dc47bf22f2581db1f9"
    else
      url "https://keystoneproject.dev/releases/stonegate/darwin-x86_64/stonegate-v1.0.0-darwin-x86_64.tar.gz"
      sha256 "dba4ae9f6bd2fe8849a87eaaf1bb7b0130f6c7c804e2eb4f2573cc5334932ae5"
    end
  end

  def install
    bin.install "stonegate"
  end

  test do
    assert_match "stonegate", shell_output("#{bin}/stonegate --version 2>&1", 0)
  end
end
