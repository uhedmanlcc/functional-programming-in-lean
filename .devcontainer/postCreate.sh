#!/usr/bin/env bash
set -euo pipefail

export ELAN_HOME="${ELAN_HOME:-$HOME/.elan}"
export PATH="$ELAN_HOME/bin:$PATH"

if ! command -v elan >/dev/null 2>&1; then
	curl --proto '=https' --tlsv1.2 -sSf https://elan.lean-lang.org/elan-init.sh |
		sh -s -- -y
fi

# Make elan and Lean commands available to VS Code and subsequent terminals.
if [[ -f "$ELAN_HOME/env" ]]; then
	source "$ELAN_HOME/env"
fi

elan toolchain install stable
elan default stable