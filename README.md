# RNA-Seq-Differential-gene-expression-DE-analysis

This workflow starts from Illumina sequencing data (fastq files). The goal is to produce lists of genes that are differentially expressed between two experimental groups, and identify gene ontology (GO) terms enriched for DE genes.

## Codes 

- All project codes are in the `/scripts` and `R_scripts` 

- Run the Batch sbmission scripts in the following order:
    1. `load_module.sh`
    2. `run_fastQC.sh`
    3. `run_hisat2build.sh`
    4. `run_hisat2align.sh`
    5. `run_sam2bam.sh`
    6. `run_sortbam.sh`
    7. `run_indexbam.sh` 
    8. `run_featureCounts.sh`
- Then move to `DESeq2.Rmd` [RPubs-link](file:///D:/Documents/workspace/RNA-Seq-Differential-gene-expression-DE-analysis/R_scripts/DESeq2.html)

- Final workspaces(results for step 2-4, in IBU cluster) directory structure as follows:

    ```
    .
    ├── [Dec 26 21:17]  bam
    │   ├── [Dec 26 21:17]  bam_dir_tree.txt
    │   ├── [Dec 26 21:17]  bam_idxs
    │   │   ├── [Dec 26 19:37]  HER21_align.sorted.bam.bai
    │   │   ├── [Dec 26 19:43]  HER22_align.sorted.bam.bai
    │   │   ├── [Dec 26 19:47]  HER23_align.sorted.bam.bai
    │   │   ├── [Dec 26 19:51]  NonTNBC1_align.sorted.bam.bai
    │   │   ├── [Dec 26 19:55]  NonTNBC2_align.sorted.bam.bai
    │   │   ├── [Dec 26 19:59]  NonTNBC3_align.sorted.bam.bai
    │   │   ├── [Dec 26 19:59]  Normal1_align.sorted.bam.bai
    │   │   ├── [Dec 26 20:01]  Normal2_align.sorted.bam.bai
    │   │   ├── [Dec 26 20:02]  Normal3_align.sorted.bam.bai
    │   │   ├── [Dec 26 20:05]  TNBC1_align.sorted.bam.bai
    │   │   ├── [Dec 26 20:09]  TNBC2_align.sorted.bam.bai
    │   │   └── [Dec 26 20:13]  TNBC3_align.sorted.bam.bai
    │   ├── [Dec 26 14:02]  error_hisat2align_7412138.e
    │   ├── [Dec 26 19:33]  error_indexbam_7412170.e
    │   ├── [Dec 26 14:24]  error_sam2bam_7412149.e
    │   ├── [Dec 26 18:35]  error_sortbam_7412158.e
    │   ├── [Dec 25  3:09]  output_hisat2align_7412138.o
    │   ├── [Dec 26 19:33]  output_indexbam_7412170.o
    │   ├── [Dec 26 14:24]  output_sam2bam_7412149.o
    │   ├── [Dec 26 17:09]  output_sortbam_7412158.o
    │   ├── [Dec 26 21:17]  sam2bam_result
    │   │   ├── [Dec 26 14:34]  HER21_align.bam
    │   │   ├── [Dec 26 14:45]  HER22_align.bam
    │   │   ├── [Dec 26 14:54]  HER23_align.bam
    │   │   ├── [Dec 26 15:04]  NonTNBC1_align.bam
    │   │   ├── [Dec 26 15:12]  NonTNBC2_align.bam
    │   │   ├── [Dec 26 15:20]  NonTNBC3_align.bam
    │   │   ├── [Dec 26 15:22]  Normal1_align.bam
    │   │   ├── [Dec 26 15:27]  Normal2_align.bam
    │   │   ├── [Dec 26 15:32]  Normal3_align.bam
    │   │   ├── [Dec 26 15:38]  TNBC1_align.bam
    │   │   ├── [Dec 26 15:46]  TNBC2_align.bam
    │   │   └── [Dec 26 15:54]  TNBC3_align.bam
    │   ├── [Dec 26 21:16]  sams
    │   │   ├── [Dec 25  5:44]  HER21_align.sam
    │   │   ├── [Dec 25  7:56]  HER22_align.sam
    │   │   ├── [Dec 25  9:54]  HER23_align.sam
    │   │   ├── [Dec 25 14:27]  NonTNBC1_align.sam
    │   │   ├── [Dec 25 19:16]  NonTNBC2_align.sam
    │   │   ├── [Dec 26  0:05]  NonTNBC3_align.sam
    │   │   ├── [Dec 26  0:14]  Normal1_align.sam
    │   │   ├── [Dec 26  0:33]  Normal2_align.sam
    │   │   ├── [Dec 26  0:53]  Normal3_align.sam
    │   │   ├── [Dec 26  2:35]  TNBC1_align.sam
    │   │   ├── [Dec 26  8:44]  TNBC2_align.sam
    │   │   └── [Dec 26 14:02]  TNBC3_align.sam
    │   └── [Dec 26 21:16]  sorted_bams
    │       ├── [Dec 26 17:20]  HER21_align.sorted.bam
    │       ├── [Dec 26 17:32]  HER22_align.sorted.bam
    │       ├── [Dec 26 17:42]  HER23_align.sorted.bam
    │       ├── [Dec 26 17:52]  NonTNBC1_align.sorted.bam
    │       ├── [Dec 26 18:00]  NonTNBC2_align.sorted.bam
    │       ├── [Dec 26 18:09]  NonTNBC3_align.sorted.bam
    │       ├── [Dec 26 18:11]  Normal1_align.sorted.bam
    │       ├── [Dec 26 18:15]  Normal2_align.sorted.bam
    │       ├── [Dec 26 18:19]  Normal3_align.sorted.bam
    │       ├── [Dec 26 18:26]  TNBC1_align.sorted.bam
    │       ├── [Dec 26 18:34]  TNBC2_align.sorted.bam
    │       └── [Dec 26 18:42]  TNBC3_align.sorted.bam
    ├── [Dec 26 20:59]  counts
    │   ├── [Dec 26 20:59]  error_featureCounts_7412172.e
    │   ├── [Dec 26 20:59]  featurecounts.txt
    │   ├── [Dec 26 20:59]  featurecounts.txt.summary
    │   └── [Dec 26 20:46]  output_featureCounts_7412172.o
    ├── [Dec 24 23:15]  index.html
    ├── [Dec 25 14:37]  QCres
    │   ├── [Dec 25  2:30]  error_QC_7412133.e
    │   ├── [Dec 24 22:24]  HER21_R1_fastqc.html
    │   ├── [Dec 24 22:24]  HER21_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  HER21_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/HER21_R1.fastq.gz
    │   ├── [Dec 24 22:37]  HER21_R2_fastqc.html
    │   ├── [Dec 24 22:37]  HER21_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  HER21_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/HER21_R2.fastq.gz
    │   ├── [Dec 24 22:52]  HER22_R1_fastqc.html
    │   ├── [Dec 24 22:52]  HER22_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  HER22_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/HER22_R1.fastq.gz
    │   ├── [Dec 24 23:07]  HER22_R2_fastqc.html
    │   ├── [Dec 24 23:07]  HER22_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  HER22_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/HER22_R2.fastq.gz
    │   ├── [Dec 24 23:18]  HER23_R1_fastqc.html
    │   ├── [Dec 24 23:18]  HER23_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  HER23_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/HER23_R1.fastq.gz
    │   ├── [Dec 24 23:29]  HER23_R2_fastqc.html
    │   ├── [Dec 24 23:29]  HER23_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  HER23_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/HER23_R2.fastq.gz
    │   ├── [Dec 25  2:30]  multiqc_data
    │   │   ├── [Dec 25  2:30]  multiqc_data.json
    │   │   ├── [Dec 25  2:30]  multiqc_fastqc.txt
    │   │   ├── [Dec 25  2:30]  multiqc_general_stats.txt
    │   │   ├── [Dec 25  2:30]  multiqc.log
    │   │   ├── [Dec 25  2:30]  multiqc_qualimap_bamqc_genome_results.txt
    │   │   └── [Dec 25  2:30]  multiqc_sources.txt
    │   ├── [Dec 25  2:30]  multiqc_report.html
    │   ├── [Dec 24 23:43]  NonTNBC1_R1_fastqc.html
    │   ├── [Dec 24 23:43]  NonTNBC1_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  NonTNBC1_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/NonTNBC1_R1.fastq.gz
    │   ├── [Dec 24 23:58]  NonTNBC1_R2_fastqc.html
    │   ├── [Dec 24 23:58]  NonTNBC1_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  NonTNBC1_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/NonTNBC1_R2.fastq.gz
    │   ├── [Dec 25  0:09]  NonTNBC2_R1_fastqc.html
    │   ├── [Dec 25  0:09]  NonTNBC2_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  NonTNBC2_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/NonTNBC2_R1.fastq.gz
    │   ├── [Dec 25  0:20]  NonTNBC2_R2_fastqc.html
    │   ├── [Dec 25  0:20]  NonTNBC2_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  NonTNBC2_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/NonTNBC2_R2.fastq.gz
    │   ├── [Dec 25  0:32]  NonTNBC3_R1_fastqc.html
    │   ├── [Dec 25  0:32]  NonTNBC3_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  NonTNBC3_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/NonTNBC3_R1.fastq.gz
    │   ├── [Dec 25  0:45]  NonTNBC3_R2_fastqc.html
    │   ├── [Dec 25  0:44]  NonTNBC3_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  NonTNBC3_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/NonTNBC3_R2.fastq.gz
    │   ├── [Dec 25  0:49]  Normal1_R1_fastqc.html
    │   ├── [Dec 25  0:49]  Normal1_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  Normal1_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/Normal1_R1.fastq.gz
    │   ├── [Dec 25  0:53]  Normal1_R2_fastqc.html
    │   ├── [Dec 25  0:53]  Normal1_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  Normal1_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/Normal1_R2.fastq.gz
    │   ├── [Dec 25  1:02]  Normal2_R1_fastqc.html
    │   ├── [Dec 25  1:02]  Normal2_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  Normal2_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/Normal2_R1.fastq.gz
    │   ├── [Dec 25  1:11]  Normal2_R2_fastqc.html
    │   ├── [Dec 25  1:11]  Normal2_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  Normal2_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/Normal2_R2.fastq.gz
    │   ├── [Dec 25  1:20]  Normal3_R1_fastqc.html
    │   ├── [Dec 25  1:20]  Normal3_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  Normal3_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/Normal3_R1.fastq.gz
    │   ├── [Dec 25  1:30]  Normal3_R2_fastqc.html
    │   ├── [Dec 25  1:30]  Normal3_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  Normal3_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/Normal3_R2.fastq.gz
    │   ├── [Dec 25  2:29]  output_QC_7412133.o
    │   ├── [Dec 26 21:18]  QCres_dir_tree.txt
    │   ├── [Dec 21 15:34]  README
    │   ├── [Dec 25  1:39]  TNBC1_R1_fastqc.html
    │   ├── [Dec 25  1:39]  TNBC1_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  TNBC1_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/TNBC1_R1.fastq.gz
    │   ├── [Dec 25  1:48]  TNBC1_R2_fastqc.html
    │   ├── [Dec 25  1:48]  TNBC1_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  TNBC1_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/TNBC1_R2.fastq.gz
    │   ├── [Dec 25  1:58]  TNBC2_R1_fastqc.html
    │   ├── [Dec 25  1:58]  TNBC2_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  TNBC2_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/TNBC2_R1.fastq.gz
    │   ├── [Dec 25  2:09]  TNBC2_R2_fastqc.html
    │   ├── [Dec 25  2:09]  TNBC2_R2_fastqc.zip
    │   ├── [Dec 24 22:10]  TNBC2_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/TNBC2_R2.fastq.gz
    │   ├── [Dec 25  2:18]  TNBC3_R1_fastqc.html
    │   ├── [Dec 25  2:18]  TNBC3_R1_fastqc.zip
    │   ├── [Dec 24 22:10]  TNBC3_R1.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/TNBC3_R1.fastq.gz
    │   ├── [Dec 25  2:29]  TNBC3_R2_fastqc.html
    │   ├── [Dec 25  2:29]  TNBC3_R2_fastqc.zip
    │   └── [Dec 24 22:10]  TNBC3_R2.fastq.gz -> /data/courses/rnaseq/breastcancer_de/reads/TNBC3_R2.fastq.gz
    ├── [Dec 26 21:23]  README.md
    ├── [Dec 25  3:09]  reference_genome
    │   ├── [Dec 25  2:04]  error_hisat2index_7412135.e
    │   ├── [Dec 25  2:01]  hisat2_index
    │   │   ├── [Dec 25  2:01]  GRCh38.1.ht2
    │   │   ├── [Dec 25  2:01]  GRCh38.2.ht2
    │   │   ├── [Dec 25  1:21]  GRCh38.3.ht2
    │   │   ├── [Dec 25  1:21]  GRCh38.4.ht2
    │   │   ├── [Dec 25  2:04]  GRCh38.5.ht2
    │   │   ├── [Dec 25  2:04]  GRCh38.6.ht2
    │   │   ├── [Dec 25  1:21]  GRCh38.7.ht2
    │   │   └── [Dec 25  1:21]  GRCh38.8.ht2
    │   ├── [Mar 19  2021]  Homo_sapiens.GRCh38.104.gtf
    │   ├── [Mar 31  2021]  Homo_sapiens.GRCh38.dna.primary_assembly.fa
    │   ├── [Dec 25  2:00]  output_hisat2index_7412135.o
    │   ├── [Dec 25  0:05]  README.txt
    │   └── [Dec 25  2:38]  reference_genome_dir_tree.txt
    └── [Dec 26 20:46]  scripts
        ├── [Dec 24 23:29]  load_module.sh
        ├── [Dec 24 23:30]  run_fastQC.sh
        ├── [Dec 26 20:46]  run_featureCounts.sh
        ├── [Dec 26  2:29]  run_hisat2align.sh
        ├── [Dec 26  2:29]  run_hisat2build.sh
        ├── [Dec 26 19:32]  run_indexbam.sh
        ├── [Dec 26  2:43]  run_sam2bam.sh
        └── [Dec 26 17:07]  run_sortbam.sh

    11 directories, 168 files
    ```
