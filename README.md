# LoReAn_Examples
Examples for LoReAn

First, download the test data

```bash
git clone https://github.com/lfaino/LoReAn_Example.git
``` 

### ***Plicaturopsis crispa*** dataset

The Crispa example is a more complete dataset. The command to use is:
First, unzip all files and after run lorean

```bash
cd LoReAn_Example/Crispa/
gunzip *gz 
lorean.py -a -rp repeats.scaffold3.bed -sr scaffold3.short_1.fastq,scaffold3.short_2.fastq  -lr scaffold3.long.fasta  -pr scaffold3.prot.fasta -sp crispa scaffold3.fasta -d -f -mg -t <n.ro of threads> --keep_tmp
```
Please, set the -t option to the number of threads to use. On a machine with 8 CPU and 24 GB or RAM, the example takes 
few hour to run due to BRAKER1 training.

With this command, the long reads are oriented the adapter sequence for the 3prime from the PacBio library prep. Additionally,
the genome is masked for repetitive regions. LoReAn command uses the stranded version. The -t option can be changed based
on the number of threads.

### ***Verticillium dhaliae*** dataset


The following command can be used to test LoReAn with Nanopore data. The genome used as reference is the chromosome *Verticillium dahliae* strain 
JR2 genome. You can compare the output of the command to the gff3 file that you can find in the output_Example folder

```bash
cd LoReAn_Example/JR2/
lorean.py -t <n.ro of threads> --keep_tmp -a -f -d -sr readsChr.subset.fastq -lr longReadsChr8.fastq -pr subset.prot.fasta -sp JR2 -mg chr8.fasta 
```

Please, set the -t option to the number of threads to use. On a machine with 8 CPU and 24 GB or RAM, the example takes 
 few hour to run due to BRAKER1 training. 

