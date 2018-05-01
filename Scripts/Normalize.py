import os
WorkDir = os.getcwd()+"/DataSet"
for filename in os.listdir(WorkDir):
	count=0.0
	factor=0.0
	data=[]
        normalizedKmers=[]
        removed_Kmers=0
	if(len(filename.split('.'))==2 and filename.split('.')[1]=="fa"):
		with open (WorkDir+'/'+filename,'r') as f:
			data =f.read().splitlines()
			for i in range(0,len(data),1):
				count+=int(data[i].split(' ')[1])
			factor=1000000/count

                print("Original_File_length= "+str(len(data)))                 

		for i in range(0,len(data),1):
			normalized_Count=round(int(data[i].split(' ')[1])*factor,1)
			if(normalized_Count >= 1):
				normalizedKmers.append(data[i].split(' ')[0]+' '+ str(normalized_Count))
                        else:
                                removed_Kmers+=1

		with open (WorkDir+'/'+filename,'w') as f:
			f.truncate()
		        for i in range(0,len(normalizedKmers),1):
		                f.write(normalizedKmers[i]+'\n')
		f.close()
print("Removed_kmers= "+str(removed_Kmers))
print("Factor= " +str(factor))
print("AllKmers_count= " +str(count))
print("File_length= "+str(len(normalizedKmers)))
