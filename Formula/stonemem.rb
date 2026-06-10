class Stonemem < Formula
  desc "Institutional memory MCP server for AI agents — FTS5 search, entity graphs, temporal scoring"
  homepage "https://keystoneproject.dev"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonemem/darwin-aarch64/stonemem-v1.1.0-darwin-aarch64.tar.gz"
      sha256 "49860030b4bfb6624b5359f794f1d1c42b4327b41e1519e2054b1a67da41ed34"
    else
      url "https://keystoneproject.dev/releases/stonemem/darwin-x86_64/stonemem-v1.1.0-darwin-x86_64.tar.gz"
      sha256 "82e2ca2635968fbd4eb65b527e3e45e6cdb2fc680519b389ab4a6a9584e63a7f"
    end
  end

  def install
    bin.install "stonemem"
  end

  test do
    assert_match "stonemem", shell_output("#{bin}/stonemem --version 2>&1", 0)
  end
end
