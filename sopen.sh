#!/bin/bash

# create temp file as search result
TMPFILE=~/.search_results

# run grep command
rg $* --color=always > "$TMPFILE"

# show results file in less
# less -Mr "$TMPFILE"
less -Mr "$TMPFILE"

# delete the temp file
rm -f -- "$TMPFILE"

# And then, figure out a way to select the file and pipe it to vi
