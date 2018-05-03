import os
work_di = os.getcwd()
for filename in os.listdir(work_di):
	c=0
	if(len(filename.split('.'))==2 and filename.split('.')[1]=="txt"):
		with open(work_di+'/'+filename, 'r+') as f:
			content = f.read().splitlines()
			f.seek(0)
			f.truncate()
			for i in content:
				f.write(">SEQ" + str(c) +'\n'+ content[c]+'\n' )
				c+=1
			f.close()
		os.rename(work_di+'/'+filename, work_di+'/'+filename.split('.')[0]+".fasta")
