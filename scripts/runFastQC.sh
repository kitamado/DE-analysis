#!/bin/bash
#SBATCH --mail-type=begin,end,fail
#SBATCH --job-name="FastQC"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=2
#SBATCH --time=24:00:00
#SBATCH --mem=25G
#SBATCH --mail-user=shunyu.wu@students.unibe.ch
#SBATCH --output=/data/courses/rnaseq/breastcancer_de/swu_workspace/QCres/output_QC_%j.o
#SBATCH --error=/data/courses/rnaseq/breastcancer_de/swu_workspace/QCres/error_QC_%j.e


source /data/users/lfalquet/SBC07107_21/scripts/module.sh

cd /data/courses/rnaseq/breastcancer_de/swu_workspace/QCres

ln -s /data/courses/rnaseq/breastcancer_de/reads/*.fastq.gz .

for k in `ls -1 *.fastq.gz`;
do fastqc -t 2 ${k};
done

multiqc .


