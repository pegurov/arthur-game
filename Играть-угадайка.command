#!/bin/bash
# Запускает угадайку в киоск-режиме Chrome: на весь экран, без вкладок,
# шорткаты Cmd+T/N и адресная строка отключены. Выход: Cmd+Q.
cd "$(dirname "$0")"
open -na "Google Chrome" --args \
  --kiosk \
  --no-first-run \
  --no-default-browser-check \
  --disable-session-crashed-bubble \
  --user-data-dir="$HOME/.arthur-game-chrome" \
  "file://$PWD/ugadaika.html"
