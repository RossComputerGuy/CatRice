#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR=LVDS-0 polybar top -r &
MONITOR=VGA-0 polybar top -r &
