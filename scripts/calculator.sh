#!/bin/sh

. $HOME/.config/dmenurc

eqn=$(xsel -o -b | dmenu $DOPTS -p "Calculate: ")
result=$(printf "%s" "$eqn" | $HOME/.scripts/calc)

printf "%s" "$result" | dmenu $DOPTS -p "Result: " >/dev/null
printf "%s" "$result" | xsel -i -b
