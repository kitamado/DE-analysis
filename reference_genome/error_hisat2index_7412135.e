Settings:
  Output files: "hisat2_index/GRCh38.*.ht2"
  Line rate: 6 (line is 64 bytes)
  Lines per side: 1 (side is 64 bytes)
  Offset rate: 4 (one in 16)
  FTable chars: 10
  Strings: unpacked
  Local offset rate: 3 (one in 8)
  Local fTable chars: 6
  Local sequence length: 57344
  Local sequence overlap between two consecutive indexes: 1024
  Endianness: little
  Actual local endianness: little
  Sanity checking: disabled
  Assertions: disabled
  Random seed: 0
  Sizeofs: void*:8, int:4, long:8, size_t:8
Input files DNA, FASTA:
  Homo_sapiens.GRCh38.dna.primary_assembly.fa
Reading reference sizes
  Time reading reference sizes: 00:00:29
Calculating joined length
Writing header
Reserving space for joined string
Joining reference sequences
  Time to join reference sequences: 00:00:24
  Time to read SNPs and splice sites: 00:00:00
Using parameters --bmax 69043338 --dcv 1024
  Doing ahead-of-time memory usage test
  Passed!  Constructing with these parameters: --bmax 69043338 --dcv 1024
Constructing suffix-array element generator
Converting suffix-array elements to index image
Allocating ftab, absorbFtab
Entering GFM loop
Exited GFM loop
fchr[A]: 0
fchr[C]: 869653843
fchr[G]: 1470243264
fchr[T]: 2073417374
fchr[$]: 2945849067
Exiting GFM::buildToDisk()
Returning from initFromVector
Wrote 986172031 bytes to primary GFM file: hisat2_index/GRCh38.1.ht2
Wrote 736462272 bytes to secondary GFM file: hisat2_index/GRCh38.2.ht2
Re-opening _in1 and _in2 as input streams
Returning from GFM constructor
Returning from initFromVector
Wrote 1295322177 bytes to primary GFM file: hisat2_index/GRCh38.5.ht2
Wrote 749943562 bytes to secondary GFM file: hisat2_index/GRCh38.6.ht2
Re-opening _in5 and _in5 as input streams
Returning from HGFM constructor
Headers:
    len: 2945849067
    gbwtLen: 2945849068
    nodes: 2945849068
    sz: 736462267
    gbwtSz: 736462268
    lineRate: 6
    offRate: 4
    offMask: 0xfffffff0
    ftabChars: 10
    eftabLen: 0
    eftabSz: 0
    ftabLen: 1048577
    ftabSz: 4194308
    offsLen: 184115567
    offsSz: 736462268
    lineSz: 64
    sideSz: 64
    sideGbwtSz: 48
    sideGbwtLen: 192
    numSides: 15342964
    numLines: 15342964
    gbwtTotLen: 981949696
    gbwtTotSz: 981949696
    reverse: 0
    linearFM: Yes
Total time for call to driver() for forward index: 00:44:24
