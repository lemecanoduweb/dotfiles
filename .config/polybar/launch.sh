#!/usr/bin/env sh

DIR="$HOME/.config/polybar/"

kill_bar() {
	# Terminate already running bar instances
	killall -q polybar

	# Wait until the processes have been shut down
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
}

kill_bar
polybar -q main -c $DIR/main.ini &