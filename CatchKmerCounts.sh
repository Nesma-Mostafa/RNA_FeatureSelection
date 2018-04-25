for n in *.fasta; do 
#printf '%s\n' "$n";
jellyfish count -m 21 -s 100M -t 10 -C  $n;
jellyfish dump mer_counts.jf > ${n%.*}.fa;
done

                

