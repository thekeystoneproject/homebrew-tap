class Stonemux < Formula
  desc "Agent coordination MCP server — inboxes, task routing, shared state, broadcast, SSE events"
  homepage "https://keystoneproject.dev"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonemux/darwin-aarch64/stonemux-v1.0.0-darwin-aarch64.tar.gz"
      sha256 "c4f14bbda29217baa94d59f9cc558a6a3f6ca8e359440ae12023d4bd194b498d"
    else
      url "https://keystoneproject.dev/releases/stonemux/darwin-x86_64/stonemux-v1.0.0-darwin-x86_64.tar.gz"
      sha256 "2fe68c46a5f50211220f58af92310d7389fdcb4134ca0eaaf3aa1ae82fbdd365"
    end
  end

  def install
    bin.install "stonemux"
  end

  test do
    assert_match "stonemux", shell_output("#{bin}/stonemux --version 2>&1", 0)
  end
end
