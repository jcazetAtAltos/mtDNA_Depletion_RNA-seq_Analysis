#!/bin/bash

while read acc; do
	echo "$acc" 1>>log.txt 2>>err.txt
	./hgBulkRnaMap_mod.sh "$acc" TruSeq3-SE.fa 1>>log.txt 2>>err.txt
done<prefixList.txt
