class Stonemem < Formula
  desc "Institutional memory MCP server for AI agents — FTS5 search, entity graphs, temporal scoring"
  homepage "https://keystoneproject.dev"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonemem/darwin-aarch64/stonemem-v1.0.0-darwin-aarch64.tar.gz"
      sha256 "03fcb621bf68f35bbb527d5bb8828b1ef4e8ba96cf738c867e05d9be2e5574aa"
    else
      url "https://keystoneproject.dev/releases/stonemem/darwin-x86_64/stonemem-v1.0.0-darwin-x86_64.tar.gz"
      sha256 "075bdfe933a4f5289e0ed4b1688cab0d85ed99eb205669b31d3282edab0ef517"
    end
  end

  def install
    bin.install "stonemem"
  end

  test do
    assert_match "stonemem", shell_output("#{bin}/stonemem --version 2>&1", 0)
  end
end
