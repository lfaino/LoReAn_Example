sudo service mysql start
bash /home/lorean/bin/LoReAn/third_party/conf_files/changeMysqlOprionsPASA.sh
lorean.py --no_braker --short_reads /data/readsChr.fastq  --long_reads /data/longReadsChr8.fastq  --protein_evidence /data/subset.prot.fasta  --pasa_db testA -wd /data/test -t 7 /data/chr8.fasta fusarium
