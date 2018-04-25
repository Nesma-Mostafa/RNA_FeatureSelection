#Python 3.5.2 (default, Nov 23 2017, 16:37:01) 
#[GCC 5.4.0 20160609] on linux
#Type "copyright", "credits" or "license()" for more information.
>>> with open ("HistogramFile") as f:
	data =f.readlines()
	data =[item for item in data if int(item.split()[1]) > 1 ]
	with open ("result.txt",'w') as rs:     #flile to write the filtered kmers
		for i in data:
			rs.write(format(i))
