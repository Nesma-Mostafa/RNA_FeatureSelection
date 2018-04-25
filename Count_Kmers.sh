#just Open ur terminal and copy the command lines in order

# divide the fasta file into kmers   just replace reads.fasta with ur datasetfile name
 jellyfish count -m 21 -s 100M -t 10 -C reads.fasta

# get the histogram of the counted kmers replacs OutputFile with the name u want
 jellyfish histo mer_counts.jf  >> Histogram
   "filename is optional if u target to save the data"

# get specific kmer
 jellyfish query mer_counts.jf target-kmer
