#!/bin/bash

rsem-prepare-reference --gtf "$1" \
	--transcript-to-gene-map t2g.txt \
	--star -p 1 \
	"$2" "$3"
