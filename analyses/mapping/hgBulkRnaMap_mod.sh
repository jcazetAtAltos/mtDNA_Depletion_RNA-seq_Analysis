#!/bin/bash

shopt -s extglob

prefix="$1"
adapt="$2"


fastqc reads/raw/"$prefix".fastq.gz -o reads/fastqc/pre/

trimmomatic SE -threads 2  -phred33 \
	reads/raw/"$prefix"?(_1).fastq.gz reads/trimmed/"$prefix"_trim.fq.gz \
	ILLUMINACLIP:"$adapt":2:30:10 LEADING:3 TRAILING:3 \
	SLIDINGWINDOW:4:15 MINLEN:36 HEADCROP:12       

fastqc reads/trimmed/"$prefix"_trim.fq.gz -o reads/fastqc/post/

cd counts

rsem-calculate-expression --num-threads 2 --no-bam-output --star \
	--temporary-folder "$prefix"_tmp \
	--star-gzipped-read-file \
	../reads/trimmed/"$prefix"_trim.fq.gz \
	/share/jcazet/analysis/resources/references/human/star/hsapGenome \
	"$prefix"

