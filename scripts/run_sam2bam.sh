#!/bin/bash
#SBATCH --mail-type=begin,end,fail
#SBATCH --job-name="sam2bam"
#SBATCH --cpus-per-task=4
#SBATCH --time=10:00:00
#SBATCH --mem=25G
#SBATCH --mail-user=shunyu.wu@students.unibe.ch
#SBATCH --output=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/output_sam2bam_%j.o
#SBATCH --error=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/error_sam2bam_%j.e

module add UHTS/Analysis/samtools/1.10

for r in HER2 NonTNBC Normal TNBC; do
        for i in 1 2 3; do
                samtools view -hbS -@ 4 ../bam/${r}${i}_align.sam > ../bam/${r}${i}_align.bam
        done
done
