# Homebrew Tap — The Keystone Project

Homebrew formulae for the [Keystone Stone](https://keystoneproject.dev) product line.

## Install

```bash
brew tap thekeystoneproject/tap
brew install stonemem      # Institutional memory MCP server
brew install stonemux      # Agent coordination MCP server
brew install stonegate     # Unified MCP tool gateway
```

## Products

| Product | Description | Port | Docs |
|---------|-------------|------|------|
| **stonemem** | FTS5 search, entity graphs, temporal scoring, supersession chains | 3391 | [Documentation](https://keystoneproject.dev/docs/stonemem/) |
| **stonemux** | Inboxes, task routing, shared state, broadcast, SSE events | 3392 | [Documentation](https://keystoneproject.dev/docs/stonemux/) |
| **stonegate** | Tool discovery, connection pooling, circuit breakers, async dispatch | 3393 | [Documentation](https://keystoneproject.dev/docs/stonegate/) |

## Quick Start

```bash
# Activate with your license key (get one at keystoneproject.dev)
stonemem activate --key SM-XXXX-XXXX-XXXX-XXXX

# Start the server
stonemem serve
```

## Links

- [Website](https://keystoneproject.dev)
- [Documentation](https://keystoneproject.dev/docs/)
- [Support](mailto:support@keystoneproject.dev)
