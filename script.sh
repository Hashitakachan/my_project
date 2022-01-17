#!bin/bash

mkdir -p `date '+%Y%m%d'`/data
mkdir -p `date '+%Y%m%d'`/analysis
touch `date '+%Y%m%d'`/analysis/output.txt 

cd `date '+%Y%m%d'`/data/

wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.gff.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/009/045/GCF_000009045.1_ASM904v1/GCF_000009045.1_ASM904v1_genomic.gff.gz
wget -O md5checksums_E_coli.txt https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/md5checksums.txt
wget -O md5checksums_B_subtillis.txt https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/009/045/GCF_000009045.1_ASM904v1/md5checksums.txt


echo "# DATE" > ../analysis/output.txt
echo "`date '+%Y%m%d'`" >> ../analysis/output.txt

echo -e "\n" >>../analysis/output.txt

echo "# FILE CHECKSUM" >> ../analysis/output.txt
echo "## E coli downloaded file md5checksum" >> ../analysis/output.txt
md5 GCF_000005845.2_ASM584v2_genomic.gff.gz >> ../analysis/output.txt
echo "## E coli source file checksum" >> ../analysis/output.txt
grep "GCF_000005845.2_ASM584v2_genomic.gff.gz" md5checksums_E_coli.txt>> ../analysis/output.txt  

echo -e "\n" >>../analysis/output.txt

echo "## B subtillis downloaded file md5checksum" >> ../analysis/output.txt
md5 GCF_000009045.1_ASM904v1_genomic.gff.gz >> ../analysis/output.txt
echo "## B subtillis source file checksum" >> ../analysis/output.txt
grep "GCF_000009045.1_ASM904v1_genomic.gff.gz" md5checksums_B_subtillis.txt >> ../analysis/output.txt

gunzip GCF_000005845.2_ASM584v2_genomic.gff.gz
gunzip GCF_000009045.1_ASM904v1_genomic.gff.gz

echo -e "\n" >>../analysis/output.txt

echo "# ANALYSIS" >>../analysis/output.txt
echo "## count tRNA" >>../analysis/output.txt
echo -n "E coli" >>../analysis/output.txt
cut -f 3 GCF_000005845.2_ASM584v2_genomic.gff | grep "tRNA" | wc -l >>../analysis/output.txt
echo -n "B subtillis" >>../analysis/output.txt
cut -f 3 GCF_000009045.1_ASM904v1_genomic.gff | grep "tRNA" | wc -l >>../analysis/output.txt

echo -e "\n" >>../analysis/output.txt

echo "## count rRNA" >>../analysis/output.txt
echo -n "E coli" >>../analysis/output.txt
cut -f 3 GCF_000005845.2_ASM584v2_genomic.gff | grep "rRNA" | wc -l >>../analysis/output.txt
echo -n "B subtillis" >>../analysis/output.txt
cut -f 3 GCF_000009045.1_ASM904v1_genomic.gff | grep "rRNA" | wc -l >>../analysis/output.txt
