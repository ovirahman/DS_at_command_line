#!/usr/bin/env bash
NUM_WORDS="${1:-10}"
tr '[:upper:]' '[:lower:]' | grep -oE "[a-z\']{2,}" | sort |
grep -Fvwf stopwords |
uniq -c | sort -nr | head -n $NUM_WORDS
