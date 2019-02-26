#! /bin/bash

cat cDNA-key.csv | tr -dc '[:alnum:]\n\.\,\_' | while IFS=',' read -r sample filename 
do 
    #mv ${filename} ${sample}.fastq.gz
    echo ${sample} 
    seqtk seq -l0 -1 "${filename}" > ${sample}_R1.fastq
    #seqtk seq -l0 -2 $filename > $sample"_R2.fastq"
done