#!/bin/bash
#SBATCH --mail-type=begin,end,fail
#SBATCH --job-name="feature_counts"
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH --mem-per-cpu=4G
#SBATCH --mail-user=shunyu.wu@students.unibe.ch
#SBATCH --output=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/output_featureCounts_%j.o
#SBATCH --error=/data/courses/rnaseq/breastcancer_de/swu_workspace/bam/error_featureCounts_%j.e

module add UHTS/Analysis/subread/2.0.1

featureCounts -T 4 \
  -a ../reference_genome/Homo_sapiens.GRCh38.92.gtf \
  -o ../counts/GRCh38_featurecounts.txt \
  ../bam/*.sorted.bam
