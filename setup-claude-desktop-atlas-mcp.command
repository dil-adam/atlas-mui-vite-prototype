#!/bin/bash
# Double-click this file in Finder (macOS) to open Terminal and run the Claude Desktop MCP setup wizard.
# Same behavior as: sh scripts/setup-claude-desktop-atlas-mcp.sh

set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
exec /bin/sh ./scripts/setup-claude-desktop-atlas-mcp.sh
