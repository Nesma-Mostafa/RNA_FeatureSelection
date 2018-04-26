work_dir=$(pwd)

#Get The Dataset file
cd $work_dir
mkdir -p $work_dir/DataSet
cd $work_dir/DataSet
wget -O GSE20592_RAW.tar 'https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE20592&format=file' 

#unzip tar file
#gzip  GSE20592_RAW.tar
tar -xvf GSE20592_RAW.tar

#unzip all files
gunzip *.gz

#convert text files to fasta files
python $work_dir/Scripts/ConvertToFasta.py

#Cluster Data to N and T
cd $work_dir
mkdir -p $work_dir/N
mkdir -p $work_dir/T
python $work_dir/Scripts/ClusterData.py

#catch kmers
cd $work_dir/DataSet
for n in *.fasta; do 
#printf '%s\n' "$n";
jellyfish count -m 21 -s 100M -t 10 -C  $n;
jellyfish dump mer_counts.jf > ${n%.*}.fa;
done
