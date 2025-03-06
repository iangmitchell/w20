import os
import sys

str1="""{ 
	"name": "", 
	"description": "",
	"image": "ipfs:// /1.txt",
	"attributes": [
		{
			"trait":"",
			"value":"1"
		},
		{
			"trait":"",
			"value":"1"
		}
	]
}"""

fr=open('words.txt', 'r')
#fr=open('numbers.txt', 'r')
i=0
for line in fr:
    i=i+1
    filename=str(i)+".txt"
    fw=open(filename, 'w')
    fw.write(line)
    fw.close()
    filename=str(i)+".json"
    fw=open(filename, 'w')
    fw.write(str1)
    fw.close()
fr.close()



