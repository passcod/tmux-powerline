#!/bin/sh
# Cofigurations for tmux-powerline.

if [ -z "$DEBUG_MODE" ]; then
	# Disable debug mode by default
	export DEBUG_MODE="false"
fi

if [ -z "$PLATFORM" ]; then
	# Your platform \in {linux,bsd,mac}.
	export PLATFORM="mac"
fi

if [ -z "$USE_PATCHED_FONT" ]; then
	# Usage of patched font for symbols. true or false.
	export USE_PATCHED_FONT="true"
fi
