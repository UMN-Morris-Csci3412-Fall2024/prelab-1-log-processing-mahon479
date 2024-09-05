#!/bin/bash

# Process r0_input.txt
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

# Process r1_input.txt
sed -E '/^\* I am [a-zA-Z]+\. My favorite sandwich is [a-zA-Z]+\.?$/!d; s/^\* I am ([a-zA-Z]+)\. My favorite sandwich is ([a-zA-Z]+)\./1. \1\n2. \2\n/' < r1_input.txt > r1_output.txt

# Process r2_input.txt
sed -E 's/\* sandwich with ([a-zA-Z.]+)\. (for here|to go)/1. \1.\n2. \2\n/' < r2_input.txt > r2_output.txt