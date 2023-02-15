#!/bin/bash

grep -P '\ttranscript\t' "$1" | \
        grep 'protein_coding' | \
	grep 'gene_name' | \
        sed 's/.*gene_name "\([^"]\+\)";.*/\1/g' > gNames.tmp

grep -P '\ttranscript\t' "$1" | \
        grep 'protein_coding' | \
	grep 'gene_name' | \
        sed 's/.*transcript_id "\([^"]\+\)";.*/\1/g' > tNames.tmp

grep -P '\ttranscript\t' "$1" | \
        grep 'protein_coding' | \
        grep -v 'gene_name' | \
        sed 's/.*gene_id "\([^"]\+\)";.*/\1/g' > gNames.ngn.tmp

grep -P '\ttranscript\t' "$1" | grep 'protein_coding' | grep -v 'gene_name' | sed 's/.*transcript_id "\([^"]\+\)";.*/\1/g' > tNames.ngn.tmp
 
grep -P '\ttranscript\t' "$1" | \
        grep -v 'protein_coding' | \
        sed 's/.*gene_id "\([^"]\+\)";.*/\1/g' > gNames.npc.tmp

grep -P '\ttranscript\t' "$1" | \
        grep -v 'protein_coding' | \
        sed 's/.*transcript_id "\([^"]\+\)";.*/\1/g' > tNames.npc.tmp

cat gNames.tmp gNames.ngn.tmp gNames.npc.tmp > gNames.all.tmp

cat tNames.tmp tNames.ngn.tmp tNames.npc.tmp > tNames.all.tmp

paste gNames.all.tmp tNames.all.tmp  > t2g.txt

#rm *.tmp

