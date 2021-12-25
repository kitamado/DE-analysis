#!/bin/bash
#SBATCH --mail-type=begin,end,fail
#SBATCH --job-name="hisat2-align"
#SBATCH --cpus-per-task=4
#SBATCH --time=48:00:00
#SBATCH --mem=25G
#SBATCH --mail-user=shunyu.wu@students.unibe.ch
#SBATCH --output=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/output_hisat2align_%j.o
#SBATCH --error=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/error_hisat2align_%j.e

module add UHTS/Aligner/hisat/2.2.1

for r in HER2 NonTNBC Normal TNBC; do
        for i in 1 2 3; do
                hisat2  -x ../reference_genome/hisat2_index/GRCh38 \
                        -1 /data/courses/rnaseq/breastcancer_de/reads/${r}${i}_R1.fastq.gz \
                        -2 /data/courses/rnaseq/breastcancer_de/reads/${r}${i}_R2.fastq.gz \
                        -S ../bam/${r}${i}_align.sam \
                        -p 8
        done
done

