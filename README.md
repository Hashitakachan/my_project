Yuka Takahashi
last update: 2022-1-16

#Assignment 12
Count tRNA and rRNA of Eschericia coli K-12 and Bacillus subtilis str.168 using gff files in different PC
Analysis were done in these 2 PC:
1st analysis: 2022-1-16 MacBook Air (Retina, 13-inch, 2019) [OS: macOS Mojave 10.14.6]
2nd analysis: 2022-1-17

## Working directory
1st analysis
    /Users/yuka/research_project/bioinfo_datascience/assignment/my_project
2nd analysis
    
"""ここにtreeコマンドいれる"""

# Analysis
The analysis was done using the following command
    $ bash script.sh

## file download
Download gff file of Escherichia coli str. K-12 substr. MG1655 from:
    https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.gff.gz

Download gff file of Bacillus subtilis str.168 from:
    https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/009/045/GCF_000009045.1_ASM904v1/GCF_000009045.1_ASM904v1_genomic.gff.gz

Download checksum file of Escherichia coli str. K-12 substr. MG1655 from:
    https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/md5checksums.txt

Download checksum file of Bacillus subtilis str.168 substr. MG1655 from:
    https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/009/045/GCF_000009045.1_ASM904v1/md5checksums.txt

## checksum
Compare md5checksum of downloaded file and checksum of source file

## count tRNA/rRNA
Count number of tRNA and rRNA by extracting annotations

# Output
## 1st analysis
"""
# DATE
20220116


# FILE CHECKSUM
## E coli downloaded file md5checksum
MD5 (GCF_000005845.2_ASM584v2_genomic.gff.gz) = bf8e20c9db7f83f887cd29325671106a
## E coli source file checksum
bf8e20c9db7f83f887cd29325671106a  ./GCF_000005845.2_ASM584v2_genomic.gff.gz


## B subtillis downloaded file md5checksum
MD5 (GCF_000009045.1_ASM904v1_genomic.gff.gz) = c3fe591011db43fc8ae9400828c70140
## B subtillis source file checksum
c3fe591011db43fc8ae9400828c70140  ./GCF_000009045.1_ASM904v1_genomic.gff.gz


# ANALYSIS
## count tRNA
E coli      86
B subtillis      86


## count rRNA
E coli      22
B subtillis      30
"""

## 2nd analysis

