#!/bin/bash

# This script downloads all 1st instar H. limbata reads from the 2014 Illumina sequencing run,
# fixes their file extensions, concatenates the R1's and R3's together, and prepares the R3 file
# for header fixing script.

echo making new directory ...
mkdir raw_reads
cd ./raw_reads

# Download all R1 and R3 reads from NCBI - SRA database
echo downloading SRA fastq files ...
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R1_001.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R1_002.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R1_003.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R1_004.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R1_005.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R1_006.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R1_007.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R1_008.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R1_009.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R3_001.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R3_002.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R3_003.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R3_004.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R3_005.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R3_006.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R3_007.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R3_008.fastq.gz.1
wget https://sra-pub-src-1.s3.amazonaws.com/SRR9732743/A155_GCCAATAT_L001_R3_009.fastq.gz.1

# Fix the file headers by removing the ".1" extension
echo removing unneccesary file extenion ...
mv A155_GCCAATAT_L001_R1_001.fastq.gz.1 A155_GCCAATAT_L001_R1_001.fastq.gz
mv A155_GCCAATAT_L001_R1_002.fastq.gz.1 A155_GCCAATAT_L001_R1_002.fastq.gz
mv A155_GCCAATAT_L001_R1_003.fastq.gz.1 A155_GCCAATAT_L001_R1_003.fastq.gz
mv A155_GCCAATAT_L001_R1_004.fastq.gz.1 A155_GCCAATAT_L001_R1_004.fastq.gz
mv A155_GCCAATAT_L001_R1_005.fastq.gz.1 A155_GCCAATAT_L001_R1_005.fastq.gz
mv A155_GCCAATAT_L001_R1_006.fastq.gz.1 A155_GCCAATAT_L001_R1_006.fastq.gz
mv A155_GCCAATAT_L001_R1_007.fastq.gz.1 A155_GCCAATAT_L001_R1_007.fastq.gz
mv A155_GCCAATAT_L001_R1_008.fastq.gz.1 A155_GCCAATAT_L001_R1_008.fastq.gz
mv A155_GCCAATAT_L001_R1_009.fastq.gz.1 A155_GCCAATAT_L001_R1_009.fastq.gz
mv A155_GCCAATAT_L001_R3_001.fastq.gz.1 A155_GCCAATAT_L001_R3_001.fastq.gz
mv A155_GCCAATAT_L001_R3_002.fastq.gz.1 A155_GCCAATAT_L001_R3_002.fastq.gz
mv A155_GCCAATAT_L001_R3_003.fastq.gz.1 A155_GCCAATAT_L001_R3_003.fastq.gz
mv A155_GCCAATAT_L001_R3_004.fastq.gz.1 A155_GCCAATAT_L001_R3_004.fastq.gz
mv A155_GCCAATAT_L001_R3_005.fastq.gz.1 A155_GCCAATAT_L001_R3_005.fastq.gz
mv A155_GCCAATAT_L001_R3_006.fastq.gz.1 A155_GCCAATAT_L001_R3_006.fastq.gz
mv A155_GCCAATAT_L001_R3_007.fastq.gz.1 A155_GCCAATAT_L001_R3_007.fastq.gz
mv A155_GCCAATAT_L001_R3_008.fastq.gz.1 A155_GCCAATAT_L001_R3_008.fastq.gz
mv A155_GCCAATAT_L001_R3_009.fastq.gz.1 A155_GCCAATAT_L001_R3_009.fastq.gz

# Concatenate the R1 and R3 gzip files into gzipped total R1 and total R3 files
echo concatenating R1 files ...
zcat A155_GCCAATAT_L001_R1_001.fastq.gz A155_GCCAATAT_L001_R1_002.fastq.gz A155_GCCAATAT_L001_R1_003.fastq.gz A155_GCCAATAT_L001_R1_004.fastq.gz A155_GCCAATAT_L001_R1_005.fastq.gz A155_GCCAATAT_L001_R1_006.fastq.gz A155_GCCAATAT_L001_R1_007.fastq.gz A155_GCCAATAT_L001_R1_008.fastq.gz A155_GCCAATAT_L001_R1_009.fastq.gz > total_R1.fq.gz

echo concatenating R3 files ...
zcat A155_GCCAATAT_L001_R3_001.fastq.gz A155_GCCAATAT_L001_R3_002.fastq.gz A155_GCCAATAT_L001_R3_003.fastq.gz A155_GCCAATAT_L001_R3_004.fastq.gz A155_GCCAATAT_L001_R3_005.fastq.gz A155_GCCAATAT_L001_R3_006.fastq.gz A155_GCCAATAT_L001_R3_007.fastq.gz A155_GCCAATAT_L001_R3_008.fastq.gz A155_GCCAATAT_L001_R3_009.fastq.gz > total_R3.fq.gz

# Unzip the total_R3.fq.gz file for header fix script:
echo unzipping R3 file ...
gzip -d total_R3.fq.gz


# If an error with zcat occurs, the files must be unzipped
# before concatenation. If no error occurs, ignore these steps.

# unzips all files in current directory that end with "fastq.gz"
#echo unzipping all fastq.gz files ...
#gzip -d *fastq.gz

# Concatenate the R1 and R3 files into total R1 and total R3 files
#echo concatenating R1 files ...
#cat A155_GCCAATAT_L001_R1_001.fastq A155_GCCAATAT_L001_R1_002.fastq A155_GCCAATAT_L001_R1_003.fastq A155_GCCAATAT_L001_R1_004.fastq A155_GCCAATAT_L001_R1_005.fastq A155_GCCAATAT_L001_R1_006.fastq A155_GCCAATAT_L001_R1_007.fastq A155_GCCAATAT_L001_R1_008.fastq A155_GCCAATAT_L001_R1_009.fastq > total_R1.fq
#echo concatenating R3 files ...
#cat A155_GCCAATAT_L001_R3_001.fastq A155_GCCAATAT_L001_R3_002.fastq A155_GCCAATAT_L001_R3_003.fastq A155_GCCAATAT_L001_R3_004.fastq A155_GCCAATAT_L001_R3_005.fastq A155_GCCAATAT_L001_R3_006.fastq A155_GCCAATAT_L001_R3_007.fastq A155_GCCAATAT_L001_R3_008.fastq A155_GCCAATAT_L001_R3_009.fastq > total_R3.fq

# gzip the total_R1.fq file for storage:
#echo gzipping total R1 file
#gzip total_R1.fq


# Move total R1 & R2 files, & shell to a new directory
echo moving completed reads to total_reads directory ...
mkdir ../total_reads
mv total_R1.fq.gz ../total_reads
mv total_R3.fq ../total_reads
cd ../total_reads

echo reads have been prepped!
echo NEXT STEPS: Remember to run the python script R3_reads_HeaderFix.py by executing the script with the -d option. For example, ./R3_reads_HeaderFix.py -d ./total_R3.fq
