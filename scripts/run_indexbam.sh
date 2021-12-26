#!/bin/bash
#SBATCH --mail-type=begin,end,fail
#SBATCH --job-name="indexbam"
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=25G
#SBATCH --mail-user=shunyu.wu@students.unibe.ch
#SBATCH --output=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/output_indexbam_%j.o
#SBATCH --error=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/error_indexbam_%j.e

module add UHTS/Analysis/samtools/1.10

for r in HER2 NonTNBC Normal TNBC; do
        for i in 1 2 3; do
                samtools index ../bam/${r}${i}_align.sorted.bam
        done
done
