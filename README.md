# Hexagenia limbata (Ephemeroptera) Transcriptomics Overview

The raw reads may be downloaded here: https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP215965
  - Note that the paired end reads are R1 and R3. Some assemblers expect R1 and R2 headers; if so, use R3_reads_HeaderFix.py.
  
  # Repo Contents
  
  Hex_reads_prep.sh = automatic download of all 9R1 & R3 files, extension correction, and concatenation to 2 complied R1 and R3 fastq files.
  
  R3_reads_HeaderFix.py = script to change all fasta headers in a R3 fastq file to reflect R2 rather than R3 labels
