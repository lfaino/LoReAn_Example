# LoReAn_Examples
Examples for LoReAn


The Crispa example is a more complete dataset. The command to use is:
```bash
gunzip *gz; lorean.py -a adapter.fasta -rp repeats.scaffold3.bed -sr scaffold3.short_1.fastq,scaffold3.short_2.fastq  -lr scaffold3.long.fasta  -pr scaffold3.prot.fasta -sp crispa scaffold3.fasta -d -f -t 4 --keep_tmp
```

With this command, the long reads are oriented the adapter sequence for the 3prime from the PacBio library prep. Additionally,
the genome is masked for repetitive regions. LoReAn commnad uses the stranded version. The -t option can be changed based
on the number of threads.

The following command can be used to test LoReAn with Nanopore data. The genome used as reference is the chromosome *Verticillium dahliae* strain 
JR2 genome. You can compare the output of the command to the gff3 file that you can find in the output_Example folder

```bash
lorean.py -t 8 -sr readsChr.subset.fastq -lr longReadsChr8.fastq -pr subset.prot.fasta chr8.fasta -d -f -sp fusarium
```


