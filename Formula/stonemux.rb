class Stonemux < Formula
  desc "Agent coordination MCP server — inboxes, task routing, shared state, broadcast, SSE events"
  homepage "https://keystoneproject.dev"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://keystoneproject.dev/releases/stonemux/darwin-aarch64/stonemux-v1.0.0-darwin-aarch64.tar.gz"
      sha256 "2b0e33a9d8b90c498afd53f78c05d1bacf06e2ff8e58489ace6fcfd48861931c"
    else
      url "https://keystoneproject.dev/releases/stonemux/darwin-x86_64/stonemux-v1.0.0-darwin-x86_64.tar.gz"
      sha256 "106d0a5cd3c1ab94a3d448a80b650ab2b42b85aa110b1ab4a32c18b88c4c04e8"
    end
  end

  def install
    bin.install "stonemux"
  end

  test do
    assert_match "stonemux", shell_output("#{bin}/stonemux --version 2>&1", 0)
  end
end
