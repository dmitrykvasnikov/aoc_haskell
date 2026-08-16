#!/bin/bash

for file in *.txt; do
	[ -e "$file" ] || continue # skip if no .txt files exist
	content=$(cat "$file")
	# Remove first and last character
	echo -n "${content:1:${#content}-2}" >"$file"
done
