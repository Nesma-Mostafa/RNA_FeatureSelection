count=0
factor=0
data=[]
with open ("/home/nesma/Documents/RNA_Kmers-master/hh/nesma.fa",'r') as f:
	data =f.read().splitlines()
	for i in range(0,len(data),2):
		count+=int(data[i].split('>')[1])
        factor=1000000/count

for i in range(0,len(data),2):
	data[i]= '>'+ str(int(data[i].split('>')[1])*factor)
print(data)

with open ("/home/nesma/Documents/RNA_Kmers-master/hh/nesma.fa",'w') as f:
	f.truncate()
        for i in range(0,len(data),1):
		f.write(data[i]+'\n')
f.close()
