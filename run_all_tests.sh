#!/bin/bash

function timeout() { perl -e 'alarm shift; exec @ARGV' "$@"; }

for problem in `seq 1 3`; do
	for strategy in `seq 1 10`; do
		echo "Problem: $problem, Strategy: $strategy"
		timeout 600 python run_search.py -p $problem -s $strategy
        done	       
done
