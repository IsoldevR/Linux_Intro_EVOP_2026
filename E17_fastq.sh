#!/bin/bash

# unzip folder with reads
unzip /projects/alberdilab/people/lzh623/Bombina_RNA/filtered_reads/

# move into the directory where the read .fq.gz are located
cd /projects/alberdilab/people/lzh623/Bombina_RNA/filtered_reads/

# make a directory for the results in a new location
mkdir /projects/alberdilab/people/lzh623/Bombina_RNA/fastqc_filtered_results

# run fastqc
fastqc -o /projects/alberdilab/people/lzh623/Bombina_RNA/fastqc_filtered_results filtered_*.fq.gz
