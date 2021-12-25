#!/bin/bash
#SBATCH --mail-type=begin,end,fail
#SBATCH --job-name="hisat2-build"
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=25G
#SBATCH --mail-user=shunyu.wu@students.unibe.ch
#SBATCH --output=/data/courses/rnaseq/breastcancer_de/swu_workspace/reference_genome/output_QC_%j.o
#SBATCH --error=/data/courses/rnaseq/breastcancer_de/swu_workspace/reference_genome/error_QC_%j.e

module add UHTS/Aligner/hisat/2.2.1

hisat2-build -p 8 Homo_sapiens.GRCh38.dna.primary_assembly.fa hisat2_index/GRCh38
