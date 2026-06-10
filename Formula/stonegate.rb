class Stonegate < Formula
  desc "Unified MCP tool gateway — routing, connection pooling, circuit breakers, async dispatch"
  homepage "https://keystoneproject.dev"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonegate/darwin-aarch64/stonegate-v1.1.0-darwin-aarch64.tar.gz"
      sha256 "c2f8349ee61332f0d0cb4e34cbeb54e937671ab0b54d402555ca0f9883ea791b"
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
