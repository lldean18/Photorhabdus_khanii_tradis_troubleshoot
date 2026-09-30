#!/bin/bash


cd 

# rename the contigs to match the fasta file Vicky is using
sed \
-e 's/contig_2/contig_1_circular_Y_length_5217644_cov_48/g' \
-e 's/contig_1/contig_2_circular_Y_length_114751_cov_19/g' 323630L_Photorhabduskhanii.gff > 323630L_Photorhabduskhanii_renamed_sorted.gff

# delete the fasta chunk
sed -i '/##FASTA/,$d' 323630L_Photorhabduskhanii_renamed.gff

# change the sort order
conda activate gsort
gsort sort_order.genome --parent 323630L_Photorhabduskhanii_renamed.gff > 323630L_Photorhabduskhanii_sorted.gff



