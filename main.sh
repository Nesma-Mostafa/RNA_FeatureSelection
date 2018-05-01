work_dir=$(pwd)
cd ~/Downloads
#install tensorFlow
sudo apt-get install python3-pip python3-dev python-virtualenv
virtualenv --system-site-packages -p python3  tensorflow
pip3 install --upgrade tensorflow
source ~/Downloads/tensorflow/bin/activate 

#install Keras
cd ~/Downloads
 virtualenv --system-site-packages -p python3 keras_tf
 source ~/Downloads/keras_tf
 pip3 install numpy scipy
 pip3 install scikit-learn
 pip3 install pillow
 pip3 install h5py
 pip3 install keras
 
#install jellyFish
cd ~/Downloads
sudo apt-get update
sudo apt-get install jellyfish

Get The Dataset file
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

#catch kmers
cd $work_dir/DataSet
for n in *.fasta; do 
printf '%s\n' "$n";
jellyfish count -m 21 -s 100M -t 10 -C  $n;
jellyfish dump -c mer_counts.jf > ${n%.*}.fa;
done

#Normalize Data
python $work_dir/Scripts/Normalize.py
