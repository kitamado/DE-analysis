
        ==========     _____ _    _ ____  _____  ______          _____  
        =====         / ____| |  | |  _ \|  __ \|  ____|   /\   |  __ \ 
          =====      | (___ | |  | | |_) | |__) | |__     /  \  | |  | |
            ====      \___ \| |  | |  _ <|  _  /|  __|   / /\ \ | |  | |
              ====    ____) | |__| | |_) | | \ \| |____ / ____ \| |__| |
        ==========   |_____/ \____/|____/|_|  \_\______/_/    \_\_____/
	  v2.0.1

//========================== featureCounts setting ===========================\\
||                                                                            ||
||             Input files : 12 BAM files                                     ||
||                           o HER21_align.sorted.bam                         ||
||                           o HER22_align.sorted.bam                         ||
||                           o HER23_align.sorted.bam                         ||
||                           o NonTNBC1_align.sorted.bam                      ||
||                           o NonTNBC2_align.sorted.bam                      ||
||                           o NonTNBC3_align.sorted.bam                      ||
||                           o Normal1_align.sorted.bam                       ||
||                           o Normal2_align.sorted.bam                       ||
||                           o Normal3_align.sorted.bam                       ||
||                           o TNBC1_align.sorted.bam                         ||
||                           o TNBC2_align.sorted.bam                         ||
||                           o TNBC3_align.sorted.bam                         ||
||                                                                            ||
||             Output file : featurecounts.txt                                ||
||                 Summary : featurecounts.txt.summary                        ||
||              Annotation : Homo_sapiens.GRCh38.104.gtf (GTF)                ||
||      Dir for temp files : ../counts                                        ||
||                                                                            ||
||                 Threads : 4                                                ||
||                   Level : meta-feature level                               ||
||              Paired-end : no                                               ||
||      Multimapping reads : not counted                                      ||
|| Multi-overlapping reads : not counted                                      ||
||   Min overlapping bases : 1                                                ||
||                                                                            ||
\\============================================================================//

//================================= Running ==================================\\
||                                                                            ||
|| Load annotation file Homo_sapiens.GRCh38.104.gtf ...                       ||
||    Features : 1498409                                                      ||
||    Meta-features : 60664                                                   ||
||    Chromosomes/contigs : 47                                                ||
||                                                                            ||
|| Process BAM file HER21_align.sorted.bam...                                 ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 329209558                                            ||
||    Successfully assigned alignments : 20864773 (6.3%)                      ||
||    Running time : 1.57 minutes                                             ||
||                                                                            ||
|| Process BAM file HER22_align.sorted.bam...                                 ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 339966203                                            ||
||    Successfully assigned alignments : 29467604 (8.7%)                      ||
||    Running time : 1.67 minutes                                             ||
||                                                                            ||
|| Process BAM file HER23_align.sorted.bam...                                 ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 282423238                                            ||
||    Successfully assigned alignments : 21118830 (7.5%)                      ||
||    Running time : 1.31 minutes                                             ||
||                                                                            ||
|| Process BAM file NonTNBC1_align.sorted.bam...                              ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 296566957                                            ||
||    Successfully assigned alignments : 39419992 (13.3%)                     ||
||    Running time : 1.43 minutes                                             ||
||                                                                            ||
|| Process BAM file NonTNBC2_align.sorted.bam...                              ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 262334672                                            ||
||    Successfully assigned alignments : 22401616 (8.5%)                      ||
||    Running time : 1.16 minutes                                             ||
||                                                                            ||
|| Process BAM file NonTNBC3_align.sorted.bam...                              ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 280237867                                            ||
||    Successfully assigned alignments : 24042999 (8.6%)                      ||
||    Running time : 1.25 minutes                                             ||
||                                                                            ||
|| Process BAM file Normal1_align.sorted.bam...                               ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 37594491                                             ||
||    Successfully assigned alignments : 23751874 (63.2%)                     ||
||    Running time : 0.24 minutes                                             ||
||                                                                            ||
|| Process BAM file Normal2_align.sorted.bam...                               ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 74885932                                             ||
||    Successfully assigned alignments : 50718279 (67.7%)                     ||
||    Running time : 0.47 minutes                                             ||
||                                                                            ||
|| Process BAM file Normal3_align.sorted.bam...                               ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 81251604                                             ||
||    Successfully assigned alignments : 60794356 (74.8%)                     ||
||    Running time : 0.51 minutes                                             ||
||                                                                            ||
|| Process BAM file TNBC1_align.sorted.bam...                                 ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 191157117                                            ||
||    Successfully assigned alignments : 20822903 (10.9%)                     ||
||    Running time : 0.93 minutes                                             ||
||                                                                            ||
|| Process BAM file TNBC2_align.sorted.bam...                                 ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 250783532                                            ||
||    Successfully assigned alignments : 17151301 (6.8%)                      ||
||    Running time : 1.15 minutes                                             ||
||                                                                            ||
|| Process BAM file TNBC3_align.sorted.bam...                                 ||
||    WARNING: Paired-end reads were found.                                   ||
||    Total alignments : 258568771                                            ||
||    Successfully assigned alignments : 18833228 (7.3%)                      ||
||    Running time : 1.19 minutes                                             ||
||                                                                            ||
|| Write the final count table.                                               ||
|| Write the read assignment summary.                                         ||
||                                                                            ||
|| Summary of counting results can be found in file "../counts/featurecounts  ||
|| .txt.summary"                                                              ||
||                                                                            ||
\\============================================================================//

