import shutil
import os

source = os.getcwd()+"/DataSet"
dest1 = os.getcwd()+"/N"
dest2 = os.getcwd()+"/T"

files = os.listdir(source)

for f in files:
	if (f.split('.')[0][-1:]=='N'):
		shutil.move(source+'/'+f, dest1)
	elif (f.split('.')[0][-1:]=='T'):
		shutil.move(source+'/'+f, dest2)		
