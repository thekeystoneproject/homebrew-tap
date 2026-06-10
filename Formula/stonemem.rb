class Stonemem < Formula
  desc "Institutional memory MCP server for AI agents — FTS5 search, entity graphs, temporal scoring"
  homepage "https://keystoneproject.dev"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonemem/darwin-aarch64/stonemem-v1.0.0-darwin-aarch64.tar.gz"
      sha256 "893422fe29eaad1cf66ab91666360e3164ff84c382fea6201db98b04a2bfb4ba"
    else
      url "https://keystoneproject.dev/releases/stonemem/darwin-x86_64/stonemem-v1.0.0-darwin-x86_64.tar.gz"
      sha256 "d3271af891a468d693ac096252934fc85fe25e5c252a74e4e7b17dc0fec902d4"
    end
  end

  def install
    bin.install "stonemem"
  end

  test do
    assert_match "stonemem", shell_output("#{bin}/stonemem --version 2>&1", 0)
  end
end
