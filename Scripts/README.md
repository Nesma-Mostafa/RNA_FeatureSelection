# **Scripts**

###### In this ```README.md``` file,the workflow of each script will be mentioned breifly
 ```Install_Tensorflow.sh``` has to be excuted before ```Install_Keras.sh``` but ```install_JellyFish.sh``` may be excuted before both of them or after as it is independant so it is prefered to excute the scripts in the following order.

- ```Install_Ternsoflow.sh``` The first script to be excuted is this one, the content of this script is:                                Here tensorflow is installed with virtual environmentas the following     
  - first of all the virtual environment and PIP should be installed
  - Create the Virtual envionment where you will install the tensorflow,**"targetDirectory"** in the script has to be replaced     with directory name , here it is assumed to be **~/tensorflow**
  - activate the virtual environment to install the tensorflow
  - make sure that pip ≥8.1 is installed
  - install **tensorflow** in the created virtual environment
  - activate **tensorflow** and each time **tensorflow** will be used it will must be activated.
  - to make sure that tensorflow is activated import tensorflow
  
- ```Install_Keras.sh``` The Secound one is this script as keras used the tensorflow as backend, The content of the script
  - virtual environment has to be created to install keras in it
  - work on the created virtual environment
  - install some python dependencies
  - install keras
  - if keras.hson is not exist in the /keras/keras.json Keras has to be imported 
  - import keras to make sure it is successfully installed.
  
- ```install_JellyFish.sh```  this script to install jellyfish 
      just issuing the 2 lines which will install it directly
      
- ```Get Dataset Files``` this script Downloads the dataset files and unzip it. **To Be Added**
       
  
- ```ConvertToFasta.py``` this script for converting the data set file to fasta files.
  - reading all the zipped files in the folder
  - unzipped them
  - adding headers to the files
  - change the extension to .fasta
  
- ```CatchKmerCounts.sh``` this script for catching the kmers with frequencies.
  - read each .fasta file in the folder
  - apply jelly fish to get the kmers
  - write the kmers with the frequencies
  
  
- ```Normalize.Py``` this script to normalize the kmers counts
    - read each .fa file in the dataset folder.
    - sum all the kmers counts in each row.
    - get the factor by divide 1000000 by the summation count.
    - multiply each kmer count with the normalization factor and approximate to one digit.
    - ignore all the kmers with normalization count < 1
    - Update the file.
