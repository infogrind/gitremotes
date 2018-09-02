#!/bin/bash

if [ ! -d .git ]; then
	echo "You must run this command in the root of a git repo." >&2
	exit 1
fi

REMOTES=$(git remote)
for r in $REMOTES; do
	echo "$r ->" $(git remote show -n "$r" | grep 'Fetch URL' \
		| sed 's/.*Fetch URL: *//')
done
