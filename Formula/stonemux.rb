class Stonemux < Formula
  desc "Agent coordination MCP server — inboxes, task routing, shared state, broadcast, SSE events"
  homepage "https://keystoneproject.dev"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonemux/darwin-aarch64/stonemux-v1.1.0-darwin-aarch64.tar.gz"
      sha256 "9821edc4184bda24c612e00ed2b934a6860c188c1c491268a2b9256fb0c03e7d"
    else
      url "https://keystoneproject.dev/releases/stonemux/darwin-x86_64/stonemux-v1.1.0-darwin-x86_64.tar.gz"
      sha256 "9f0fb60b3a746812e6f44a139fe9578e55c1823c828d67367ae012ef6d684916"
    end
  end

  def install
    bin.install "stonemux"
  end

  test do
    assert_match "stonemux", shell_output("#{bin}/stonemux --version 2>&1", 0)
  end
end
