class Stonemux < Formula
  desc "Agent coordination MCP server — inboxes, task routing, shared state, broadcast, SSE events"
  homepage "https://keystoneproject.dev"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonemux/darwin-aarch64/stonemux-v1.1.0-darwin-aarch64.tar.gz"
      sha256 "3ef47d7c285c2170192a2dffde6448484d7c9d154744492ded6c1dc03e146ac8"
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
