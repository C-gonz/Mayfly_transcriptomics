# Transcriptomics Project Overview
- Species = Hexagenia limbata (Ephemeroptera)
- RNA extracted from mass of 1st instar nymphs 
- 2014 Illumina HiSeq2500 paired end sequencing 

NCBI BioProject attrributes and more info: https://www.ncbi.nlm.nih.gov/biosample?LinkName=bioproject_biosample_all&from_uid=556046

The raw reads may be downloaded here: https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP215965
  - Note that the paired end reads are R1 and R3. Some assemblers expect R1 and R2 headers; if so, use R3_reads_HeaderFix.py. 

# Repo Contents
— Hex_reads_prep.sh = wget download of all 9 R1 & R3 files, extension correction, and concatenation to 2 unzipped R1 and R3 fastq files.
  
— R3_reads_HeaderFix.py = changes all fasta headers in an unzipped R3 fastq file to reflect R2 rather than R3 labels
