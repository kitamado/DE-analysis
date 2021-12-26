#!/bin/bash
#SBATCH --mail-type=begin,end,fail
#SBATCH --job-name="sortbam"
#SBATCH --cpus-per-task=8
#SBATCH --time=24:00:00
#SBATCH --mem=32G
#SBATCH --mail-user=shunyu.wu@students.unibe.ch
#SBATCH --output=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/output_sortbam_%j.o
#SBATCH --error=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/error_sortbam_%j.e

module add UHTS/Analysis/samtools/1.10

for r in HER2 NonTNBC Normal TNBC; do
        for i in 1 2 3; do
                samtools sort -m 32G -@ 8 -o ../bam/${r}${i}_align.sorted.bam -T temp ../bam/${r}${i}_align.bam
        done
done
