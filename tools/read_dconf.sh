#!/usr/bin/env bash

PATHS_FILE=".chezmoidata/dconf.yaml"
OUTPUT_DIR="dconf"

readarray -t paths < <(cat "$PATHS_FILE" | yq '.dconf_paths[]')

for path in "${paths[@]}"; do
    filename="$OUTPUT_DIR/$(basename "$path").ini"
    dconf dump "$path" > "$filename"
done
