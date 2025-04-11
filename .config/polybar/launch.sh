#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar topbar 2>&1 | tee -a /tmp/topbar-polybar.log & disown

echo "Top bar launched..."
