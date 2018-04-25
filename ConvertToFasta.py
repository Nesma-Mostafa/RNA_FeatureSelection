import os
X = os.getcwd()
for filename in os.listdir(X):
	c=0
	if(len(filename.split('.'))==2 and filename.split('.')[1]=="txt"):
		with open(X+'/'+filename, 'r+') as f:
			content = f.read().splitlines()
			f.seek(0)
			f.truncate()
			for i in content:
				f.write(">SEQ" + str(c) +'\n'+ content[c]+'\n' )
				c+=1
			f.close()
		os.rename(X+'/'+filename, X+'/'+filename.split('.')[0]+".fasta")
